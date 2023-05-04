import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:product_catalogue/features/home/models/product_category_tab_item.dart';
import 'package:product_catalogue/features/home/state/product_category_tab_index.dart';
import 'package:product_catalogue/router.dart';
import 'package:product_catalogue/ui/common/widgets/rounded_tab_item.dart';
import 'package:go_router/go_router.dart';

class ProductCategoryTabs extends ConsumerWidget {
  const ProductCategoryTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeTabIndex = ref.watch(categoryTabIndexProvider);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(tabItems.length, (index) {
            final tabItem = tabItems[index];
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  ref
                      .read(categoryTabIndexProvider.notifier)
                      .setActiveTab(index);
                  if (tabItem.queryKey == null) {
                    context.go(ScreenPaths.home);
                  } else {
                    context.go("${ScreenPaths.home}?c=${tabItem.queryKey}");
                  }
                },
                child: RoundedTabItem(
                  title: tabItem.text,
                  isActive: activeTabIndex == index,
                  icon: tabItem.icon,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

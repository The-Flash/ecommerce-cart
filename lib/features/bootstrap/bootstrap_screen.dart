import 'package:flutter/material.dart';
import 'package:product_catalogue/logic/models/models.dart';
import 'package:product_catalogue/logic/providers/providers.dart';
import 'package:product_catalogue/router.dart';
import 'package:product_catalogue/ui/common/theme/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BootstrapScreen extends ConsumerStatefulWidget {
  const BootstrapScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BootstrapScreenState();
}

class _BootstrapScreenState extends ConsumerState<BootstrapScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final AsyncValue<List<Product>> products = ref.watch(productsProvider);

    products.when(
      data: (data) {
        context.go(ScreenPaths.home);
      },
      error: (err, stack) {
        context.go(ScreenPaths.error);
      },
      loading: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(productsProvider, (_, state) {
      state.when(
          data: (data) {
            context.go(ScreenPaths.home);
          },
          error: (err, stack) {
            context.go(ScreenPaths.error);
          },
          loading: () {});
    });

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: AppColors.bgGradient,
        ),
        child: const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

// class BootstrapScreen extends StatelessWidget {
//   static const String routeName = "/";

//   const BootstrapScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(
//           gradient: AppColors.bgGradient,
//         ),
//         child: const Center(
//           child: CircularProgressIndicator(
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }

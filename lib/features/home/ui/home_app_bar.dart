import 'package:flutter/material.dart';

import 'headline.dart';
import 'search_box.dart';
import 'top_banner.dart';
import 'top_header_options.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: const [
        TopBanner(),
        Positioned(
          top: 50,
          right: 20,
          left: 20,
          child: TopHeaderOptions(),
        ),
        Positioned(
          top: 150,
          left: 20,
          child: Headline(),
        ),
        Positioned(
          bottom: -25,
          left: 0,
          right: 0,
          child: Align(
            child: SearchBox(),
          ),
        ),
      ],
    );
  }
}

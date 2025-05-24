import 'package:flutter/material.dart';
import 'package:projec5/core/text/app_text.dart';
import 'package:projec5/core/theme/app_palette.dart';
import 'package:projec5/core/widget/custom_tap_bar.dart';

class LeftRightTapBar extends StatelessWidget {
  const LeftRightTapBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: CustomTabBar(
        tabs: [
          Tab(text: AppText.left),
          Tab(text: AppText.right),
        ],

        isScrollable: false,
        dividerHeight: 1,
        indicatorPadding: EdgeInsets.zero,
        labelPadding: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        labelColor: AppPalette.lightBlack,
        unselectedLabelColor: AppPalette.grayColor,
        indicatorColor: AppPalette.greenColor,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorWeight: 3,

        views: [],
      ),
    );
  }
}

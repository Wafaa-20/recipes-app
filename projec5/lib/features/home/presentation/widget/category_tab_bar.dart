import 'package:flutter/material.dart';
import 'package:projec5/core/text/app_text.dart';
import 'package:projec5/core/theme/app_palette.dart';
import 'package:projec5/core/widget/custom_tap_bar.dart';

class CategoryTabBar extends StatelessWidget {
  const CategoryTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTabBar(
      tabs: [
        Tab(text: AppText.all),
        Tab(text: AppText.food),
        Tab(text: AppText.drink),
      ],
      alignment: TabAlignment.start,
      customStyle: true,
      isScrollable: true,
      dividerHeight: 0,
      indicatorPadding: EdgeInsets.zero,
      labelPadding: EdgeInsets.only(right: 10),
      padding: EdgeInsets.zero,
      labelColor: AppPalette.whiteColor,
      unselectedLabelColor: AppPalette.grayColor,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 1,
      indicatorColor: AppPalette.whiteColor,
    );
  }
}

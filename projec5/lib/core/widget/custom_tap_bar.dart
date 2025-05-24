import 'package:flutter/material.dart';
import 'package:projec5/core/text/text_styles.dart';
import 'package:projec5/core/theme/app_palette.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.tabs,
    this.views,
    this.indicator,
    this.alignment,
    this.customStyle = false,
    required this.isScrollable,
    required this.dividerHeight,
    required this.indicatorPadding,
    required this.labelPadding,
    required this.padding,
    required this.labelColor,
    required this.unselectedLabelColor,
    this.indicatorWeight,
    this.indicatorColor,
    this.indicatorSize,
  });
  final List<Tab> tabs;
  final List<Widget>? views;
  final Decoration? indicator;
  final TabAlignment? alignment;
  final bool customStyle;
  final bool isScrollable;
  final double dividerHeight;
  final EdgeInsetsGeometry indicatorPadding;
  final EdgeInsetsGeometry labelPadding;
  final EdgeInsetsGeometry padding;
  final Color labelColor;
  final Color unselectedLabelColor;
  final double? indicatorWeight;
  final Color? indicatorColor;
  final TabBarIndicatorSize? indicatorSize;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TabBar(
              tabs: List.generate(
                tabs.length,
                (index) => customStyle
                    ? Tab(
                        child: Container(
                          alignment: Alignment.center,
                          width: 86,
                          height: 47,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: AppPalette.lightGray,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Text(
                            tabs[index].text!,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    : tabs[index],
              ),
              tabAlignment: alignment,
              isScrollable: isScrollable,
              indicator: indicator,
              dividerHeight: dividerHeight,
              indicatorPadding: indicatorPadding,
              labelPadding: labelPadding,
              padding: padding,
              unselectedLabelColor: unselectedLabelColor,
              labelColor: labelColor,
              labelStyle: TextStyles.inter60015,

              indicatorColor: indicatorColor,
              indicatorSize: indicatorSize,
              indicatorWeight: indicatorWeight!,
            ),
            if (views != null && views!.isNotEmpty)
              Expanded(child: TabBarView(children: views!)),
          ],
        ),
      ),
    );
  }
}

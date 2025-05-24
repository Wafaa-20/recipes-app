import 'package:flutter/material.dart';
import 'package:projec5/core/text/app_text.dart';
import 'package:projec5/core/text/text_styles.dart';
import 'package:projec5/core/theme/app_palette.dart';
import 'package:projec5/features/home/presentation/widget/category_tab_bar.dart';
import 'package:projec5/features/home/presentation/widget/left_right_tap_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(hintText: AppText.search, leading: Icon(Icons.search)),
              SizedBox(height: 24),
              Text(AppText.category, style: TextStyles.inter70017),
              SizedBox(height: 16),
              CategoryTabBar(),
              SizedBox(height: 23),
              Divider(thickness: 8, color: AppPalette.lightWhite),
              SizedBox(height: 24),
              LeftRightTapBar(),
            ],
          ),
        ),
      ),
    );
  }
}

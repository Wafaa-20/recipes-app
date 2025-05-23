import 'package:flutter/material.dart';
import 'package:projec5/core/text/text_styles.dart';
import 'package:projec5/core/theme/app_palette.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyles.inter50015.copyWith(color: AppPalette.lightBlack),
      ),
    );
  }
}

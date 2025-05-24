import 'package:flutter/material.dart';
import 'package:projec5/core/theme/app_palette.dart';

class PasswordContain extends StatelessWidget {
  const PasswordContain({super.key, required this.passwordCheck});
  final bool passwordCheck;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Your Password must contain:"),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: passwordCheck ? AppPalette.lightGreen : AppPalette.lightGray,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.check,
            color: passwordCheck ? AppPalette.greenColor : AppPalette.grayColor,
            size: 15,
          ),
        ),
      ],
    );
  }
}

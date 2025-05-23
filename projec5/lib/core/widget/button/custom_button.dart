import 'package:flutter/material.dart';
import 'package:projec5/core/extension/git_size_screen.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.width,
    this.height,
  });
  final VoidCallback onPressed;
  final Widget child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      style: ButtonStyle(
        fixedSize: WidgetStateProperty.all(
          Size(width ?? context.getWidth() * 0.90, height ?? 56),
        ),
      ),
      child: child,
    );
  }
}

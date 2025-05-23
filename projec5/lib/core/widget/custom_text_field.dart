import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    this.suffixIcon,
    this.prefixIcon,
  });
  final String text;
  final IconData? suffixIcon;
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hint: Text(text),
        suffixIcon: Icon(suffixIcon),
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}

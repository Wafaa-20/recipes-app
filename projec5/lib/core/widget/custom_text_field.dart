import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    required this.controller,
    required this.validator,
  });
  final String text;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final Function(String)? onChanged;
  final TextEditingController controller;
  final String Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        hint: Text(text),
        suffixIcon: Icon(suffixIcon),
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}

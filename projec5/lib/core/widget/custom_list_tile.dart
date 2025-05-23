import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, this.title, this.subtitle});
  final Widget? title;
  final Widget? subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(title: title!, subtitle: subtitle!);
  }
}

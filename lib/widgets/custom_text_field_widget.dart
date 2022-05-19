import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Function(String) onchanged;
  final String label;
  final bool obscureText;

  const CustomTextFieldWidget(
      {Key? key,
      required this.label,
      required this.onchanged,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(label: Text(label)),
      onChanged: onchanged,
      obscureText: obscureText,
    );
  }
}

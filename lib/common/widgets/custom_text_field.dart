import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textController;
  final String labelText;
  const CustomTextField(
      {super.key, required this.textController, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      decoration: InputDecoration(
        labelText: labelText,
        // hintText: "Username",
      ),
    );
  }
}

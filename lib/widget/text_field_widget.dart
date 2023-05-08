import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final TextInputType keyboard;
  
  

  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.title,
    required this.keyboard,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: title,
      ),
      keyboardType: keyboard,
    );
  }
}

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.blue.shade300,
      child: Text(
        text,
        style:
            const TextStyle(color: Colors.white70, fontWeight: FontWeight.w700),
      ),
    );
  }
}

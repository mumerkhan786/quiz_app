import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton(this.sButton, {super.key, required this.text});

  final void Function() sButton;
  final String text;
  // final VoidCallback onPressed;

  @override
  Widget build(context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        side: const BorderSide(
          color: Color.fromARGB(255, 62, 13, 148),
        ),
      ),
      onPressed: sButton,
      icon: const Icon(Icons.arrow_right_alt),
      label: Text(text),
    );
  }
}

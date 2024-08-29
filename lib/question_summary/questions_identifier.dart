import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsIdentifier extends StatelessWidget {
  const QuestionsIdentifier(
      {super.key, required this.questionIndex, required this.isCorrectAnswer});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 150, 198, 241)
            : const Color.fromARGB(255, 249, 133, 241),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: GoogleFonts.lato(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

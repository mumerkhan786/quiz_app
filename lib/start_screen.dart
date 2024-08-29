import "package:flutter/material.dart";
import "package:quiz_app/buttons/start_button.dart";
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, this.needHelp, {super.key});

  final void Function() startQuiz;
  final void Function() needHelp;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 208, 186, 245),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          StartButton(text: 'Start Quiz', startQuiz),
          const SizedBox(
            height: 10,
          ),
          StartButton(text: 'User Guide', needHelp),
        ],
      ),
    );
  }
}

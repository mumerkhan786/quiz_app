import 'package:flutter/material.dart';
import 'package:quiz_app/buttons/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  var currentQuestionsIndex = 0;

  void answerQuestions(String answer) {
    setState(() {
      widget.onSelectAnswer(answer);
      currentQuestionsIndex = currentQuestionsIndex + 1;
      // alternate way of writing this
      // currentQuestionsIndex += 1;
      // currentQuestionsIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[currentQuestionsIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestions.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 208, 186, 245),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...currentQuestions.getShuffledAnswer().map(
              (answer) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 50,
                      child: AnswerButton(
                        answerText: answer,
                        onTap: () {
                          answerQuestions(answer);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

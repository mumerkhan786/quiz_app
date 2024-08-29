import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.onRestart, {super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'questions_index': i,
          'questions': questions[i].text,
          'correct_answers': questions[i].answers[0],
          'user_answers': chosenAnswers[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numAnswerQuestions = summaryData.where((data) {
      return data['user_answers'] == data['correct_answers'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numAnswerQuestions out of $numTotalQuestions questions correctly!',
              style: const TextStyle(
                color: Color.fromARGB(255, 242, 183, 249),
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              onPressed: onRestart,
              icon: const Icon(Icons.restart_alt),
              label: const Text(
                'Restart Quiz',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

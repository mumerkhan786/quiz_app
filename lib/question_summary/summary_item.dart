import 'package:flutter/material.dart';
import 'package:quiz_app/question_summary/questions_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemData});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAns =
        itemData['user_answers'] == itemData['correct_answers'];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionsIdentifier(
            isCorrectAnswer: isCorrectAns,
            questionIndex: itemData['questions_index'] as int,
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['questions'] as String,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const SizedBox(height: 5),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Selected Answer: ',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: itemData['user_answers'] as String,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(162, 249, 133, 241),
                        ),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Correct Answer: ',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: itemData['correct_answers'] as String,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(162, 150, 198, 241),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

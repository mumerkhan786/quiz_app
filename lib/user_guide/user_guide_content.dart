import 'package:flutter/material.dart';
import 'package:quiz_app/user_guide/guide_text_widget.dart';

class UserGuideContent extends StatelessWidget {
  const UserGuideContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GuideTextWidget('Welcome to the Quiz App!'),
              const SizedBox(height: 10),
              paragraph(
                'This guide will help you understand how to navigate and use the features of the Quiz App. Follow these simple steps to test your knowledge and learn while having fun!',
              ),
              const SizedBox(height: 15),
              const GuideTextWidget('1. Starting the Quiz'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: mainSectionTitle('\u2022 Home Screen:'),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 27),
                child: paragraph(
                    'When you open the app, you will be greeted by two buttons:'),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: subSectionTitle('\u2022 Start Quiz:'),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 42),
                child: paragraph('Tap this button to begin the quiz.'),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: subSectionTitle('\u2022 User Guide:'),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 42),
                child: paragraph(
                  'Tap this button to access the user guide if you need any help or instructions.',
                ),
              ),
              const SizedBox(height: 15),
              const GuideTextWidget('2. Answering Questions'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: mainSectionTitle('\u2022 Question Screen:'),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 27),
                child: paragraph(
                  'Each question screen will present a question at the top, followed by four possible answers.',
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: mainSectionTitle('\u2022 Selecting an Answer:'),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 27),
                child: paragraph(
                  'Tap on one of the four choices to select your answer. Once selected, the app will automatically move to the next question.',
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: mainSectionTitle('\u2022 Continue Answering:'),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 27),
                child: paragraph(
                  'Tap on one of the four choices to select your answer. Once selected, the app will automatically move to the next question.',
                ),
              ),
              const SizedBox(height: 15),
              const GuideTextWidget('3. Viewing Your Results'),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: mainSectionTitle('\u2022 Result Screen:'),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 27),
                child: paragraph(
                    'After answering all the questions, you will be taken to the result screen.'),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: subSectionTitle('\u2022 Score Summary:'),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 42),
                child: paragraph(
                    'At the top of the result screen, you’ll see a summary showing how many answers you got correct out of the total number of questions.'),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: subSectionTitle('\u2022 Review Your Answers:'),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 42),
                child: paragraph(
                  'Below the summary, each question will be displayed along with:',
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: subSectionTitle('\u2022 Your Answer:'),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 84),
                child: paragraph(
                    'The answer you selected will be highlighted in "pink".'),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: subSectionTitle('\u2022 Correct Answer:'),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 84),
                child: paragraph(
                  'The correct answer will be highlighted in "blue".',
                ),
              ),
              const SizedBox(height: 15),
              const GuideTextWidget('4. Restarting the Quiz'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: mainSectionTitle('\u2022 Restart Button:'),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 27),
                child: paragraph(
                  'At the bottom of the result screen, you’ll find a "Restart Quiz" button.',
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: mainSectionTitle('\u2022 Start Over:'),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 27),
                child: paragraph(
                  'Tap this button to start the quiz from the beginning, allowing you to retake the quiz and improve your score.',
                ),
              ),
              const SizedBox(height: 15),
              const GuideTextWidget('5. User Guide'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: mainSectionTitle('\u2022 Accessing the Guide:'),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 27),
                child: paragraph(
                  'If you need help or a refresher on how to use the app, you can always tap the "User Guide" button on the home screen. This will bring up this user guide.',
                ),
              ),
              const SizedBox(height: 15),
              const GuideTextWidget('6. Exiting the Quiz'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: mainSectionTitle('\u2022 Exit:'),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 27),
                child: paragraph(
                  'If you wish to exit the app at any time, simply close the app as you normally would on your device.',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/user_guide/user_guide_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';
  // Widget? activeScreen;

  // this way is good for rendering content conditionally but we still need initState
  // for this purpose so I used another way like Ternary Expression for that purpose

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen, moveScreen);
  //   super.initState();
  // }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(
        () {
          // selectedAnswer = [];
          activeScreen = 'result-screen';
        },
      );
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'questions-screen';
    });
  }

  void moveScreen() {
    setState(() {
      activeScreen = 'user-guide-screen';
      // activeScreen = 'result-screen';
    });
  }

  void switchScreen() {
    setState(
      () {
        activeScreen = 'questions-screen';
        // activeScreen = const QuestionsScreen();
      },
    );
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen, moveScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        restartQuiz,
        chosenAnswers: selectedAnswer,
      );
    }

    if (activeScreen == 'user-guide-screen') {
      screenWidget = const UserGuideScreen();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 122, 63, 223),
                Color.fromARGB(255, 59, 11, 143),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
          // Ternary Expression used here but alternative way for this purpose used If Statement

          // child: activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : const QuestionsScreen(),
        ),
      ),
    );
  }
}

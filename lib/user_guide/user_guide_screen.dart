import 'package:flutter/material.dart';
import 'package:quiz_app/user_guide/user_guide_content.dart';
import 'package:quiz_app/user_guide/guide_text_widget.dart';

class UserGuideScreen extends StatelessWidget {
  const UserGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GuideTextWidget('User Guide'),
        backgroundColor: const Color.fromARGB(221, 5, 19, 110),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
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
        child: const UserGuideContent(),
      ),
    );
  }
}

import 'package:cdc_quiz/app/question_one_screen.dart';
import 'package:cdc_quiz/app/quiz_brain.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<QuizBrain>(
      create: (context) => QuizBrain(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "CDCQuiz",
        home: QuestionOneScreen(),
      ),
    );
  }
}

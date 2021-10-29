import 'package:cdc_quiz/app/custom_button.dart';
import 'package:cdc_quiz/app/question_one_screen.dart';
import 'package:cdc_quiz/app/question_five_screen.dart';
import 'package:cdc_quiz/app/quiz_brain.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({Key? key}) : super(key: key);

  @override
  _FinalScreenState createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  void initState() {
    final quizBrain = Provider.of<QuizBrain>(context, listen: false);
    quizBrain.getMax();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final quizBrain = Provider.of<QuizBrain>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('CDC Quiz'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            color: Colors.white,
            height: height * 0.2,
            child: Image.asset('assets/images/image.jpeg'),
          ),
          SizedBox(
            height: height * 0.075,
          ),
          Center(
            child: Text(
                'According to your answers, we recommend you to join: ${quizBrain.result} community'),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Center(
            child: CustomButton(
                onPressed: () {
                  quizBrain.restart();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => QuestionOneScreen()),
                  );
                },
                widget: Text('RESTART'),
                backGroundColor: Colors.blueAccent,
                height: height * 0.05,
                width: width * 0.3,
                borderColor: Colors.blueAccent),
          ),
        ]),
      ),
    );
  }
}

import 'package:cdc_quiz/app/custom_button.dart';
import 'package:cdc_quiz/app/question_two_screen.dart';
import 'package:cdc_quiz/app/quiz_brain.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionOneScreen extends StatefulWidget {
  @override
  State<QuestionOneScreen> createState() => _QuestionOneScreenState();
}

class _QuestionOneScreenState extends State<QuestionOneScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

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
          Question1(),
        ]),
      ),
    );
  }
}

class Question1 extends StatefulWidget {
  const Question1({
    Key? key,
  }) : super(key: key);

  @override
  State<Question1> createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final quizBrain = Provider.of<QuizBrain>(context, listen: true);
    return Column(
      children: [
        Text(
          quizBrain.getQuestion(0),
          style: TextStyle(color: Colors.black),
        ),
        SizedBox(
          height: height * 0.075,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomButton(
              onPressed: () {
                setState(() {
                  quizBrain.addPR();
                  quizBrain.addquestionNo();
                });
                print(quizBrain.questionNo);
                print(quizBrain.PR);
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => QuestionTwoScreen()),
                );
              },
              widget: Text(' think of ad budget and sponsorship benefits'),
              backGroundColor: Colors.blueAccent,
              height: height * 0.05,
              width: width * 0.3,
              borderColor: Colors.blueAccent),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomButton(
              onPressed: () {
                setState(() {
                  quizBrain.addCD();
                  quizBrain.addquestionNo();
                });
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => QuestionTwoScreen()),
                );
              },
              widget: Text('reflect on the decorations and colours'),
              backGroundColor: Colors.blueAccent,
              height: height * 0.05,
              width: width * 0.3,
              borderColor: Colors.blueAccent),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomButton(
              onPressed: () {
                setState(() {
                  quizBrain.addAC();
                  quizBrain.addquestionNo();
                });
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => QuestionTwoScreen()),
                );
              },
              widget: Text('think of the script written and the words chosen'),
              backGroundColor: Colors.blueAccent,
              height: height * 0.05,
              width: width * 0.3,
              borderColor: Colors.blueAccent),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomButton(
              onPressed: () {
                setState(() {
                  quizBrain.addHR();
                  quizBrain.addquestionNo();
                });
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => QuestionTwoScreen()),
                );
              },
              widget: Text('think of the overall quality of the ad '),
              backGroundColor: Colors.blueAccent,
              height: height * 0.05,
              width: width * 0.3,
              borderColor: Colors.blueAccent),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomButton(
              onPressed: () {
                setState(() {
                  quizBrain.addDVP();
                  quizBrain.addquestionNo();
                });
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => QuestionTwoScreen()),
                );
              },
              widget:
                  Text(' think of the location and the casting of the shoot '),
              backGroundColor: Colors.blueAccent,
              height: height * 0.05,
              width: width * 0.3,
              borderColor: Colors.blueAccent),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomButton(
              onPressed: () {
                setState(() {
                  quizBrain.addMedia();
                  quizBrain.addquestionNo();
                  print(quizBrain.questionNo);
                  print(quizBrain.Media);
                });
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => QuestionTwoScreen()),
                );
              },
              widget: Text('Think of the design & font'),
              backGroundColor: Colors.blueAccent,
              height: height * 0.05,
              width: width * 0.3,
              borderColor: Colors.blueAccent),
        ),
      ],
    );
  }
}

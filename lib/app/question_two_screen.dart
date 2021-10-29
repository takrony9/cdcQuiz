import 'package:cdc_quiz/app/custom_button.dart';
import 'package:cdc_quiz/app/question_three_screen.dart';
import 'package:cdc_quiz/app/quiz_brain.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionTwoScreen extends StatefulWidget {
  const QuestionTwoScreen({Key? key}) : super(key: key);

  @override
  _QuestionTwoScreenState createState() => _QuestionTwoScreenState();
}

class _QuestionTwoScreenState extends State<QuestionTwoScreen> {
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
          Question2(),
        ]),
      ),
    );
  }
}

class Question2 extends StatefulWidget {
  const Question2({
    Key? key,
  }) : super(key: key);

  @override
  State<Question2> createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final quizBrain = Provider.of<QuizBrain>(context, listen: true);
    return Column(
      children: [
        Text(
          quizBrain.getQuestion(1),
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
                  quizBrain.addCD();
                  quizBrain.addquestionNo();
                });
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => QuestionThreeScreen()),
                );
              },
              widget: Text('The Artistic Crafter'),
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
                  quizBrain.addPR();
                  quizBrain.addquestionNo();
                });
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => QuestionThreeScreen()),
                );
              },
              widget: Text('The Convincer'),
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
                  MaterialPageRoute(
                      builder: (context) => QuestionThreeScreen()),
                );
              },
              widget: Text('The Multitasker'),
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
                  MaterialPageRoute(
                      builder: (context) => QuestionThreeScreen()),
                );
              },
              widget: Text('The Representer '),
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
                  MaterialPageRoute(
                      builder: (context) => QuestionThreeScreen()),
                );
              },
              widget: Text('The detective'),
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
                  MaterialPageRoute(
                      builder: (context) => QuestionThreeScreen()),
                );
              },
              widget: Text('The one with an eye for detail'),
              backGroundColor: Colors.blueAccent,
              height: height * 0.05,
              width: width * 0.3,
              borderColor: Colors.blueAccent),
        ),
      ],
    );
  }
}

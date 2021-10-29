import 'package:cdc_quiz/app/custom_button.dart';
import 'package:cdc_quiz/app/question_four_screen.dart';
import 'package:cdc_quiz/app/quiz_brain.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionThreeScreen extends StatefulWidget {
  const QuestionThreeScreen({Key? key}) : super(key: key);

  @override
  _QuestionThreeScreenState createState() => _QuestionThreeScreenState();
}

class _QuestionThreeScreenState extends State<QuestionThreeScreen> {
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
          Question3(),
        ]),
      ),
    );
  }
}

class Question3 extends StatefulWidget {
  const Question3({
    Key? key,
  }) : super(key: key);

  @override
  State<Question3> createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final quizBrain = Provider.of<QuizBrain>(context, listen: true);
    return Column(
      children: [
        Text(
          quizBrain.getQuestion(2),
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
                  quizBrain.addHR();
                  quizBrain.addquestionNo();
                });
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => QuestionFourScreen()),
                );
              },
              widget: Text(' Implementing the rules & monitoring others'),
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
                  MaterialPageRoute(builder: (context) => QuestionFourScreen()),
                );
              },
              widget: Text('express yourself and commuincate'),
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
                  MaterialPageRoute(builder: (context) => QuestionFourScreen()),
                );
              },
              widget: Text('visualize and imagine'),
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
                  MaterialPageRoute(builder: (context) => QuestionFourScreen()),
                );
              },
              widget: Text('enjoy working in a team and being a leader'),
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
                });
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => QuestionFourScreen()),
                );
              },
              widget: Text(
                  'The one who takes pictures instead of being photographed'),
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
                  print(quizBrain.questionNo);
                  print(quizBrain.Media);
                });
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => QuestionFourScreen()),
                );
              },
              widget: Text(
                  'analyzing each situation & working on it’s development '),
              backGroundColor: Colors.blueAccent,
              height: height * 0.05,
              width: width * 0.3,
              borderColor: Colors.blueAccent),
        ),
      ],
    );
  }
}

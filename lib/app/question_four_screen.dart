import 'package:cdc_quiz/app/custom_button.dart';
import 'package:cdc_quiz/app/question_five_screen.dart';
import 'package:cdc_quiz/app/quiz_brain.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionFourScreen extends StatefulWidget {
  const QuestionFourScreen({Key? key}) : super(key: key);

  @override
  _QuestionFourScreenState createState() => _QuestionFourScreenState();
}

class _QuestionFourScreenState extends State<QuestionFourScreen> {
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
          Question4(),
        ]),
      ),
    );
  }
}

class Question4 extends StatefulWidget {
  const Question4({
    Key? key,
  }) : super(key: key);

  @override
  State<Question4> createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final quizBrain = Provider.of<QuizBrain>(context, listen: true);
    return Column(
      children: [
        Text(
          quizBrain.getQuestion(3),
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
                  MaterialPageRoute(builder: (context) => QuestionFiveScreen()),
                );
              },
              widget: Text('learning new skills, Raising the spirit'),
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
                  MaterialPageRoute(builder: (context) => QuestionFiveScreen()),
                );
              },
              widget: Text(' building relationships'),
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
                  MaterialPageRoute(builder: (context) => QuestionFiveScreen()),
                );
              },
              widget: Text('thinking out outside the box'),
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
                  MaterialPageRoute(builder: (context) => QuestionFiveScreen()),
                );
              },
              widget: Text('Learning new skills, and reading'),
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
                  MaterialPageRoute(builder: (context) => QuestionFiveScreen()),
                );
              },
              widget: Text('Planning and discovering new info and sharing it'),
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
                  MaterialPageRoute(builder: (context) => QuestionFiveScreen()),
                );
              },
              widget:
                  Text('Ability to generate many ideas for the same project'),
              backGroundColor: Colors.blueAccent,
              height: height * 0.05,
              width: width * 0.3,
              borderColor: Colors.blueAccent),
        ),
      ],
    );
  }
}

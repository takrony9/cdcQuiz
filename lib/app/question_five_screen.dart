import 'package:cdc_quiz/app/custom_button.dart';
import 'package:cdc_quiz/app/final_screen.dart';
import 'package:cdc_quiz/app/quiz_brain.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuestionFiveScreen extends StatefulWidget {
  const QuestionFiveScreen({Key? key}) : super(key: key);

  @override
  _QuestionFiveScreenState createState() => _QuestionFiveScreenState();
}

class _QuestionFiveScreenState extends State<QuestionFiveScreen> {
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
          Question5(),
        ]),
      ),
    );
  }
}

class Question5 extends StatefulWidget {
  const Question5({
    Key? key,
  }) : super(key: key);

  @override
  State<Question5> createState() => _Question5State();
}

class _Question5State extends State<Question5> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final quizBrain = Provider.of<QuizBrain>(context, listen: true);
    return Column(
      children: [
        Text(
          quizBrain.getQuestion(4),
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
                  MaterialPageRoute(builder: (context) => FinalScreen()),
                );
              },
              widget: Text('Drawing'),
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
                  MaterialPageRoute(builder: (context) => FinalScreen()),
                );
              },
              widget: Text('Writing and doing credible research'),
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
                  MaterialPageRoute(builder: (context) => FinalScreen()),
                );
              },
              widget: Text('Following social media trends & Campaigns'),
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
                  MaterialPageRoute(builder: (context) => FinalScreen()),
                );
              },
              widget: Text('working in different places'),
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
                  MaterialPageRoute(builder: (context) => FinalScreen()),
                );
              },
              widget: Text('Exploration of the places'),
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
                  MaterialPageRoute(builder: (context) => FinalScreen()),
                );
              },
              widget: Text('Designing & taking pictures'),
              backGroundColor: Colors.blueAccent,
              height: height * 0.05,
              width: width * 0.3,
              borderColor: Colors.blueAccent),
        ),
      ],
    );
  }
}

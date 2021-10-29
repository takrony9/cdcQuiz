import 'package:cdc_quiz/app/question.dart';
import 'package:flutter/foundation.dart';

class QuizBrain with ChangeNotifier {
  int questionNo = 0;
  int CD = 0;
  int AC = 0;
  int PR = 0;
  int HR = 0;
  int DVP = 0;
  int Media = 0;
  String result = '';

  void addHR() {
    HR++;
  }

  void addCD() {
    CD++;
  }

  void addAC() {
    AC++;
  }

  void addPR() {
    PR++;
  }

  void addDVP() {
    DVP++;
  }

  void addMedia() {
    Media++;
    notifyListeners();
  }

  void addquestionNo() {
    questionNo++;
  }

  List<Question> questionsBank = [
    Question(
        'You saw a street advertisement, What is the first thought you get?'),
    Question('Give a title to yourself'),
    Question('Which one are you? '),
    Question(
        'What do you think you\'re mostly good at or your most special skill?'),
    Question('What do you prefer most?'),
  ];

  String getQuestion(int i) {
    return questionsBank[i].questionText;
  }

  void restart() {
    questionNo = 0;
    CD = 0;
    AC = 0;
    PR = 0;
    HR = 0;
    DVP = 0;
    Media = 0;
    result = '';
    print('restart');
    notifyListeners();
  }

  void getMax() {
    var list = [CD, HR, AC, Media, DVP, PR];
    var largest_value = list[0];
    var smallest_value = list[0];
    var most;

    for (var i = 0; i < list.length; i++) {
      if (list[i] > largest_value) {
        largest_value = list[i];
        most = i;
      }
      if (list[i] < smallest_value) {
        smallest_value = list[i];
      }
    }
    if (most == 0) {
      result = 'C&D';
    } else if (most == 1) {
      result = 'HR';
    } else if (most == 2) {
      result = 'AC';
    } else if (most == 3) {
      result = 'Media';
    } else if (most == 4) {
      result = 'DVP';
    } else if (most == 5) {
      result = 'PR';
    }
    notifyListeners();

    print("Smallest value in the list : ${smallest_value}");
    print("Largest value in the list : ${largest_value}");
    print(most);
  }
}

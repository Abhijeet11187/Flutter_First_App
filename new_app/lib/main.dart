import "package:flutter/material.dart";
import 'package:new_app/result.dart';
import "./quiz.dart";
import "./result.dart";

// void main(){
// runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'what\'s Your favourite colour',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Greeen', 'score': 5},
        {'text': 'white', 'score': 5},
        {'text': 'Orange', 'score': 5}
      ]
    },
    {
      'questionText': 'what\'s Your  Animal',
      'answers': [
        {'text': 'Vulture', 'score': 10},
        {'text': 'Wolf', 'score': 5},
        {'text': 'Falcon', 'score': 5},
        {'text': 'Tiger', 'score': 5}
      ]
    },
    {
      'questionText': 'what\'s Your favourite Place',
      'answers': [
        {'text': 'UruliKancan', 'score': 10},
        {'text': 'Pokhra', 'score': 5},
        {'text': 'Switzerland', 'score': 5},
        {'text': 'America', 'score': 5}
      ]
    },
  ];
  var totalScore = 0;
  var questionNumber = 0;
  resetQuiz() {
    setState(() {
      totalScore = 0;
      questionNumber = 0;
    });
  }

  void answerQuestion(int score) {
    setState(() {
      totalScore += score;
      questionNumber = questionNumber + 1;
    });
    print(questionNumber);

    if (questionNumber < questions.length) {
      print("We have more Questions");
    }
  }

  @override
  Widget build(BuildContext contextr) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: questionNumber < questions.length
                ? Quiz(answerQuestion, questions, questionNumber)
                : Result(totalScore, resetQuiz)));
  }
}

import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionNumber;
  Quiz(@required this.answerQuestion, @required this.questions,
      @required this.questionNumber) {}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionNumber]['questionText']),
        ...(questions[questionNumber]['answers'] as List<Map<String,Object>>)
            .map((answers) {
          return Answers(()=>answerQuestion(answers['score']), answers['text']);
        }).toList()
      ],
    );
  }
}

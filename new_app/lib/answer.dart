import "package:flutter/material.dart";

class Answers extends StatelessWidget {
  final Function selecthandler;
  String answer;
Answers(this.selecthandler,this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
       child :RaisedButton(
         color: Colors.blue,
                  child: Text(answer),
                  onPressed: selecthandler,
                ),
    );
  }
}
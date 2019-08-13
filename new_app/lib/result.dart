import "package:flutter/material.dart";

class Result extends StatelessWidget {
  int totalScore;
  var resetHandeler;
  Result(this.totalScore, this.resetHandeler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            'You did it \n Your Score is\n' + totalScore.toString(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetHandeler,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}

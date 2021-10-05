import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  var resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          Text(
            "RESULT : " + resultScore.toString() + "/5",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: resetQuiz,
              child: Text(
                "TRY AGAIN",
                style: TextStyle(color: Colors.green),
              ))
        ],
      ),
    );
  }
}

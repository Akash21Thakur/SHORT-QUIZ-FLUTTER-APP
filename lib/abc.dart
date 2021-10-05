import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
   var counterA;
  final String answerText;
  Answer(this.counterA,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 25,color: Colors.white),
        ),
        onPressed: counterA,
      ),
    );
  }
}

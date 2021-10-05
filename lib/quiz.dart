import 'package:flutter/material.dart';

import 'question.dart';
import 'abc.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> qList;
  final Function answered;
  final int qIndex;

  Quiz(
      {required this.qList,
       required this.answered,
       required this.qIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(qList[qIndex]['qText'].toString()),
      ...(qList[qIndex]['answers'] as List<Map<String,Object>>).map((answer) {
        return Answer(()=>answered(answer['score']), answer['text'].toString());
      }).toList(),
    ]);
  }
}

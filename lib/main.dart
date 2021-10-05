import 'package:demoprojects/lastpage.dart';
import 'package:flutter/material.dart';

import './quiz.dart';

void main() {
  runApp(MyDemoApp());
}

class MyDemoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyDemoAppState();
  }
}

class _MyDemoAppState extends State<MyDemoApp> {

  final _qList = const [
    {
      'qText': 'What is the capital of India?',
      'answers': [
        {'text': 'MUMBAI', 'score': -1},
        {'text': 'DELHI', 'score': 1},
        {'text': 'KOLKATA', 'score': -1},
        {'text': 'Chennai', 'score': -1}
      ],
    },
    {
      'qText': 'How many cards are there in a playing deck?',
      'answers': [
        {'text': '48', 'score': -1},
        {'text': '26', 'score': -1},
        {'text': '50', 'score': -1},
        {'text': '52', 'score': 1}
      ],
    },
    {
      'qText': 'How many degrees are there in a circle?',
      'answers': [
        {'text': '360', 'score': 1},
        {'text': '270', 'score': -1},
        {'text': '180', 'score': -1},
        {'text': '0  ', 'score': -1}
      ],
    },
    {
      'qText': 'Who is the President if India?',
      'answers': [
        {'text': 'NARENDRA MODI', 'score': -1},
        {'text': 'AMIT SHAH', 'score': -1},
        {'text': 'RAM NATH KOVIND', 'score': 1},
        {'text': 'PRANAB MUKHERJEE', 'score': -1}
      ],
    },
    {
      'qText': 'Which is the largest plannet ?',
      'answers': [
        {'text': 'JUPITER', 'score': 1},
        {'text': 'EARTH', 'score': -1},
        {'text': 'MARS', 'score': -1},
        {'text': 'MERCURY', 'score': -1}
      ],
    },
  ];
  var _qCounter = 0;
  var _totalScore=0;

  void _reset()
  {
    setState(() {
      _qCounter=0;
      _totalScore=0;
    });

  }
  void _answered(int score) {
    _totalScore+=score;
    setState(() {
      _qCounter = (_qCounter + 1);
    });
    print(_qCounter);

    if (_qCounter < _qList.length) {
      print("MORE TO GO . . . ");
    } else {
      print("NO MORE QUESTIONS...");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('TEST YOURSELF !')),
          ),
          body: _qCounter < _qList.length
              ? Quiz(qList: _qList, qIndex: _qCounter, answered: _answered)
              : Result(_totalScore,_reset)),
    );
  }
}

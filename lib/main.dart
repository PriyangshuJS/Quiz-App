import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './Quiz.dart';
import './result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final _question = const [
    {
      "quesTxt": "Who wear jercy no 18 in Indian Cricket team ?",
      "ansTxt": [
        {"text": "Virat Kohli", "score": 1},
        {"text": "MS Dhoni", "score": 0},
        {"text": "Saurav Ganguly", "score": 0},
        {"text": "Yuvraj Singh", "score": 0}
      ],
    },
    {
      "quesTxt":
          "Who is the Youngest Player to score in a FIFA World Cup Final ?",
      "ansTxt": [
        {"text": "Pele", "score": 1},
        {"text": "Lionel Messi", "score": 0},
        {"text": "CR7", "score": 0},
        {"text": "Kylian Mbappé", "score": 0}
      ],
    },
    {
      "quesTxt": "Real Goat ?",
      "ansTxt": [
        {"text": "Pele", "score": 0},
        {"text": "Lionel Messi", "score": 0},
        {"text": "CR7", "score": 1},
        {"text": "Diego Maradona", "score": 0}
      ],
    },
  ];

  int _qindex = 0;
  int _totalScore = 0;

  void _qans(int score) {
    _totalScore += score;
    setState(() {
      _qindex++;
    });
  }

  void _reset() {
    setState(() {
      _totalScore = 0;
      _qindex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 102, 103, 167),
          elevation: 20,
        ),
        body: Center(
          child: _qindex < _question.length
              ? Quiz(
                  question: _question,
                  qindex: _qindex,
                  qans: _qans,
                )
              : Result(_totalScore, _question.length, _reset),
        ),
      ),
    );
  }
}

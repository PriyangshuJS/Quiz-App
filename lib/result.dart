import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int TotalScore;
  final int TotalQuestions;
  final VoidCallback Reset;
  Result(this.TotalScore, this.TotalQuestions, this.Reset);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Image.asset(
          "assets/fireworks.png",
          fit: BoxFit.contain,
          height: 200,
        ),
        SizedBox(
          height: 70,
        ),
        Center(
          child: Text(
            "Result Of the Quiz :- \n\nTotal number of Questions :- $TotalQuestions\n You Scored :- $TotalScore \n ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Center(
          child: Card(
            elevation: 50,
            shape: Border(),
            child: ListTile(
              onTap: Reset,
              title: Text("Play Again"),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String qtext;
  Questions(this.qtext);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 70),
        Text(
          qtext,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 50),
      ],
    );
  }
}

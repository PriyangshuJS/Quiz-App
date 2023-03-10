import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int qindex;
  final Function qans;

  Quiz({required this.question, required this.qindex, required this.qans});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(question[qindex]["quesTxt"]
                as String //This can also replaced by .atString()
            ),
        ...(question[qindex]["ansTxt"] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
              () => qans(answer["score"] as int), answer["text"] as String);
        }).toList()
      ],
    );
  }
}

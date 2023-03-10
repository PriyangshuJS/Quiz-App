import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selecthandler;
  String AnsTxt;
  Answers(this.selecthandler, this.AnsTxt);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Card(
        elevation: 20,
        child: ListTile(
          title: Text(
            AnsTxt,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: selecthandler,
          iconColor: Colors.lime,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _question;
  const Question(this._question, Key? key) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10),
      child: Text(
        _question,
        style: TextStyle(
          fontSize: 28,
          backgroundColor: Colors.lime[50],
          color: Colors.blue,
          height: 10,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

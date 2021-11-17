import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _question;
  const Question(this._question, Key? key) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(_question);
  }
}

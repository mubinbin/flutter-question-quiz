import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback? onPressedHandler;

  const Answer({required this.answerText, this.onPressedHandler, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressedHandler,
        child: Text(answerText),
      ),
    );
  }
}

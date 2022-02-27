import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _qustionIndex = 0;

  void _onPressHandler(String answer) {
    if (_qustionIndex < 2) {
      setState(() {
        _qustionIndex++;
      });
      print(answer);
    } else {
      print(answer);
      setState(() {
        _qustionIndex = 0;
      });
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    const _question1 = {
      "question": "What's your favorite color?",
      "answers": ["Blue", "Black", "Green", "Yellow", "Red"]
    };
    const _question2 = {
      "question": "What is the scariest animal?",
      "answers": ["Snake", "Tiger"]
    };
    const _question3 = {
      "question": "What's your favorite car?",
      "answers": ["BMW", "Mercedes", "Audi"]
    };

    const _questions = [_question1, _question2, _question3];

    final List<Answer> _answerList =
        (_questions[_qustionIndex]["answers"] as List<String>)
            .map((String answerItem) => Answer(
                  answerText: answerItem,
                  onPressedHandler: () => _onPressHandler(answerItem),
                ))
            .toList();

    return MaterialApp(
      // Scaffold gives basic app design
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first app!"),
        ),
        // Scaffold's body only takes one widget
        body: Column(
          children: <Widget>[
            Question(_questions[_qustionIndex]["question"] as String, null),
            ..._answerList,
          ],
        ),
      ),
    );
  }
}

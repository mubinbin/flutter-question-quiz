import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _qustionIndex = 0;

  void _onPressHandler() {
    if (_qustionIndex < 2) {
      setState(() {
        _qustionIndex++;
      });
      print(_qustionIndex);
    } else {
      print(_qustionIndex);
      setState(() {
        _qustionIndex = 0;
      });
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      "What's your favorite color?",
      "What's your favorite car?",
      "How are you doing?"
    ];

    return MaterialApp(
      // Scaffold gives basic app design
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first app!"),
        ),
        // Scaffold's body only takes one widget
        body: Column(
          children: [
            Question(_questions[_qustionIndex], null),
            ElevatedButton(
              onPressed: _onPressHandler,
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: _onPressHandler,
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: _onPressHandler,
              child: const Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}

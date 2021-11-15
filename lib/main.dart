import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


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
            Text(_questions[0]),
            ElevatedButton(
              onPressed: () => print("This is answer 1"),
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: () => print("This is answer 2"),
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () => print("This is answer 3"),
              child: const Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen');
  }

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: Column(
          children: [
            const Text('The Question'),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}

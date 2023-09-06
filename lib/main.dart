import 'package:flutter/material.dart';

import 'package:flutter_basics/quiz.dart';
import 'package:flutter_basics/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 2},
        {'text': 'Blue', 'score': 4},
        {'text': 'Black', 'score': 10}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 3},
        {'text': 'Dog', 'score': 1},
        {'text': 'Snake', 'score': 4},
        {'text': 'Bird', 'score': 10}
      ],
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': [
        {'text': 'Ampesie', 'score': 3},
        {'text': 'Jollof', 'score': 1},
        {'text': 'Banku', 'score': 4},
        {'text': 'Fufu', 'score': 10}
      ],
    },
  ];

  var _questionIndex = 0;
  int _score = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _score += _score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: () => _answerQuestion(_score),
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : const Result()),
    );
  }
}

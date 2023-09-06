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
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Red', 'Purple', 'Blue', 'Black'],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Cat', 'Dog', 'Snake', 'Bird'],
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answer': ['Jollof', 'Fufu', 'Ampesie', 'Banku'],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    }
    print(_questionIndex);
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
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : const Result()),
    );
  }
}

// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_basics/answer.dart';
import 'package:flutter_basics/question.dart';

class Quiz extends StatelessWidget {
  final questions;
  final questionIndex;
  final answerQuestion;
  const Quiz({
    super.key,
    this.questions,
    required this.questionIndex,
    this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
        ),
        // Answer(answerQuestion, 'Answer 1')
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
      ],
    );
  }
}

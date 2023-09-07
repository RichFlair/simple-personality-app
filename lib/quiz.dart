import 'package:flutter/material.dart';
import 'package:flutter_basics/answer.dart';
import 'package:flutter_basics/question.dart';
  
class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function answerQuestion;
  const Quiz({
    super.key,
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
        ),
        // Answer(answerQuestion, 'Answer 1')
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answerQuestion, answer['text'].toString());
        }).toList(),
      ],
    );
  }
}

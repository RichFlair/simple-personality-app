import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;
  final int result;
  const Result({
    super.key,
    required this.result,
    required this.resetQuiz,
  });

  String get resultPhrase {
    if (result <= 8) {
      return 'You\'re awesome and innocent';
    } else if (result <= 12) {
      return 'You\'re are great';
    } else {
      return 'You\'re weired';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: () => resetQuiz(),
            child: const Text('Reset Quiz'),
          ),
        ],
      ),
    );
  }
}

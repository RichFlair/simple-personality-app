import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final selectHandler;

  const Answer(this.selectHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: selectHandler,
        child: const Text('Answer 1'),
      ),
    );
  }
}

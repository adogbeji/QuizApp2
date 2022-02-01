import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerQuestion;

  Answer(this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Register'),
      onPressed: answerQuestion,
    );
  }
}

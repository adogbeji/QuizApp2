import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback chooseAnswer;
  final int indexValue;

  Quiz({@required this.questions, @required this.chooseAnswer, @required this.indexValue});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Question(questions[indexValue]['question']),
            ...(questions[indexValue]['answers'] as List<String>).map((answer) {
              return Answer(chooseAnswer, answer);
            }).toList(),
          ],
        );
  }
}
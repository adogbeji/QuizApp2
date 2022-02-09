import 'package:flutter/material.dart';

// Widget Imports
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

// For Next Time: Turn list of questions into list of maps with answer

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _indexValue = 3;

  void _clickButton() {
    setState(() {
      _indexValue -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'What is your name?',
        'answers': ['Jack', 'Michael', 'Josh', 'Amy', 'Chris'],
      },
      {
        'question': 'Where do you live?',
        'answers': [
          'Nottingham',
          'Oxford',
          'Liverpool',
          'Birmingham',
          'London'
        ],
      },
      {
        'question': 'What job do you do?',
        'answers': ['Journalist', 'Estate Agent', 'Doctor', 'Teacher', 'Chef'],
      },
      {
        'question': 'How old are you?',
        'answers': [28, 34, 23, 45, 39, 32],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            width: double.infinity,
            child: const Text(
              'Questionnare App!',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_indexValue]['question']),
            Answer(_clickButton),
            Answer(_clickButton),
            Answer(_clickButton),
          ],
        ),
      ),
    );
  }
}

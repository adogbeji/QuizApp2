import 'package:flutter/material.dart';

// Widget Imports
import './question.dart';
import './answer.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

// For Next Time: Continue splitting up your widget tree (lesson 51)!

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
    final _questions = [
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
        'answers': [
          28.toString(),
          34.toString(),
          23.toString(),
          45.toString(),
          39.toString(),
          32.toString()
        ],
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
        body: _indexValue >= 0 ? Quiz(chooseAnswer: _clickButton, questions: _questions, indexValue: _indexValue,) 
        : Center(
          child: Text('Well done!', style: TextStyle(fontSize: 18,),),
        ),
      ),
    );
  }
}

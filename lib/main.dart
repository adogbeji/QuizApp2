import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// For Next Time: Make state class and properties private & put question into separate widget

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget>createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var indexValue = 3;

  void clickButton() {
    setState(() {
      indexValue -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your name?',
      'Where do you live?',
      'What job do you do?',
      'How old are you?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            width: double.infinity,
            child:
          const Text('Questionnare App!', style: TextStyle(fontSize: 24), textAlign: TextAlign.center,),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(6),
              child: 
            Text(questions.elementAt(indexValue), style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
            ),
            ElevatedButton(
              child: Text('Register'),
              onPressed: clickButton,
            ),
            ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                print('Login!');
              },
            ),
            ElevatedButton(
              child: Text('Contact'),
              onPressed: () => print('Contact!'),
            ),
          ],
        ),
      ),
    );
  }
}
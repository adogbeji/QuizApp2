import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            Text('Choose from below:', style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
            ),
            ElevatedButton(
              child: Text('Register'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Login'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Contact'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
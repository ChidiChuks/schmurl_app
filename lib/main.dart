import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'Wha\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Schmurl App'),
        ),
        body: new Column(
          children: <Widget>[
            Text('The question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}

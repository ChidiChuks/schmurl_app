import 'package:flutter/material.dart';

// personal imports
import 'package:schmurl_app/question.dart';
import 'package:schmurl_app/answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
      
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?', 
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Cat', 'Lion', 'Eagle', 'Snake']
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['Max', 'Chinedu', 'Pat', 'John']
      },
    ];
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Schmurl App'),
        ),
        body: new Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

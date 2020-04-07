import 'package:flutter/material.dart';

// personal imports
import './quiz.dart';
import './result.dart';

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

  final _questions = const [
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

  var _questionIndex = 0;

  void _answerQuestion() {

    // var aBool = true;
    // aBool = false;
     
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
      
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Schmurl App'),
        ),
        body: _questionIndex < _questions.length 
        ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,) : 
        Result(),
      ),
    );
  }
}

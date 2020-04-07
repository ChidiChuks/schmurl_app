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
      'answers': [
        {'text': 'Black', 'score': 10}, 
        {'text': 'Red', 'score': 5}, 
        {'text': 'Green', 'score': 3}, 
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10}, 
        {'text': 'Lion', 'score': 3}, 
        {'text': 'Eagle', 'score': 5}, 
        {'text': 'Snake', 'score': 1}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 10}, 
        {'text': 'Chinedu', 'score': 3}, 
        {'text': 'Pat', 'score': 5}, 
        {'text': 'John', 'score': 1}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {

    // var aBool = true;
    // aBool = false;

    _totalScore += score;
     
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
        Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

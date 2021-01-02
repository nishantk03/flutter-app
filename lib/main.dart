import 'package:basic_app/quiz.dart';
import 'package:basic_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What\'s your favourite color?',
      'answer': [
        {'text': 'Red', 'score': 10},
        {'text': 'Organge', 'score': 8},
        {'text': 'Green', 'score': 5},
        {'text': 'Black', 'score': 2}
      ]
    },
    {
      'question': 'What\'s your favourite animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Lion', 'score': 20},
        {'text': 'Dog', 'score': 10},
        {'text': 'Cow', 'score': 1}
      ]
    },
    {
      'question': 'What\'s your favourite food?',
      'answer': [
        {'text': 'Panner', 'score': 3},
        {'text': 'Mashroom', 'score': 5},
        {'text': 'Chicken', 'score': 8},
        {'text': 'Noodles', 'score': 2}
      ]
    },
  ];

  var _questionIndex = 0;
  var _quizScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _quizScore = 0;
    });
  }

  void _answerChoosen(score) {
    setState(() {
      _questionIndex++;
      _quizScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                quizQuestions: _questions,
                answerHandler: _answerChoosen,
                questionIndex: _questionIndex)
            : Result(_quizScore, _resetQuiz),
      ),
    );
  }
}

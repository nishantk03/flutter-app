import 'package:basic_app/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

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
  final questions = const [
    {
      'question': 'What\'s your favourite color?',
      'answer': ['Red', 'Organge', 'Green', 'Black']
    },
    {
      'question': 'What\'s your favourite animal?',
      'answer': ['Rabbit', 'Lion', 'Dog', 'Cow']
    },
    {
      'question': 'What\'s your favourite food?',
      'answer': ['Panner', 'Mashroom', 'Chicken', 'Noodles']
    },
  ];

  var _questionIndex = 0;
  void _answerChoosen() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //var questions = ['This is the 1st question?', 'This is the 2nd question?'];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz'),
          ),
          body: _questionIndex < questions.length
              ? Column(
                  children: [
                    Question(questions[_questionIndex]['question']),
                    ...(questions[_questionIndex]['answer'] as List<String>)
                        .map((ans) => Answer(_answerChoosen, ans))
                        .toList()
                  ],
                )
              : Center(
                  child: Text(
                    'You did it !!!',
                    style: TextStyle(fontSize: 40, color: Colors.blue),
                  ),
                )),
    );
  }
}

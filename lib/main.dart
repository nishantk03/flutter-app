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
  var _questionIndex = 0;
  void _answerChoosen() {
    setState(() {
      if (_questionIndex < 2) {
        _questionIndex++;
      } else {
        _questionIndex = 0;
      }
    });
    print('Answer choosen!!!');
  }

  @override
  Widget build(BuildContext context) {
    //var questions = ['This is the 1st question?', 'This is the 2nd question?'];
    var questions = [
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
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]['question']),
              ...(questions[_questionIndex]['answer'] as List<String>)
                  .map((ans) => Answer(_answerChoosen, ans))
                  .toList()
            ],
          )),
    );
  }
}

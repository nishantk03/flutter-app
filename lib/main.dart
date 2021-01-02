import 'package:basic_app/question.dart';
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
  var _questionIndex = 0;
  void _answerChoosen() {
    setState(() {
      if (_questionIndex < 1) {
        _questionIndex++;
      } else {
        _questionIndex = 0;
      }
    });
    print('Answer choosen!!!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['This is the 1st question?', 'This is the 2nd question?'];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Hey Man!'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]),
              RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: () => print('Answer 1 choosen!!!')),
              RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: () {
                    print('Answer 2 choosen');
                    print('2 selected');
                  }),
              RaisedButton(child: Text('Answer 3'), onPressed: _answerChoosen),
            ],
          )),
    );
  }
}

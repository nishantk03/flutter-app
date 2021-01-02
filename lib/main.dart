import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerChoosen() {
    setState(() {
      if (questionIndex < 1) {
        questionIndex++;
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
              Text(questions[questionIndex]),
              RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: () => print('Answer 1 choosen!!!')),
              RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: () {
                    print('Answer 2 choosen');
                    print('2 selected');
                  }),
              RaisedButton(child: Text('Answer 3'), onPressed: answerChoosen),
            ],
          )),
    );
  }
}

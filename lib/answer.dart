import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  Answer(this.answerHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //margin: EdgeInsets.all(10),
      child: RaisedButton(
          color: Colors.blue,
          child: Text('Answer 1'),
          onPressed: answerHandler),
    );
  }
}

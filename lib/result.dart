import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;
  Result(this.score, this.reset);

  String get quizPhrase {
    String phrase;
    if (score <= 8) {
      phrase = 'You are innocent !!!';
    } else if (score <= 20) {
      phrase = 'You are daring !!!';
    } else {
      phrase = 'You are killer !!!';
    }
    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            quizPhrase,
            style: TextStyle(fontSize: 40, color: Colors.blue),
          ),
        ),
        FlatButton(
            onPressed: reset,
            child: Text(
              'Reset Quiz',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ))
      ],
    );
  }
}

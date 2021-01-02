import 'package:basic_app/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quizQuestions;
  final Function answerHandler;
  final int questionIndex;
  Quiz({
    @required this.quizQuestions,
    @required this.answerHandler,
    @required this.questionIndex,
  }); //named arguments
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(quizQuestions[questionIndex]['question']),
        ...(quizQuestions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map(
                (ans) => Answer(() => answerHandler(ans['score']), ans['text']))
            .toList()
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../question.dart';
import '../answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final void Function()? answerQuestion;

  Quiz({
    super.key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            questionText: questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(
            selectHandler: answerQuestion,
            answerText: answer,
          );
        }).toList(),
      ],
    );
  }
}
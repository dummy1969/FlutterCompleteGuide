import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function()? selectHandler;
  final String answerText;

  const Answer(
      {Key? key, required this.selectHandler, required this.answerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: selectHandler,
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              child: Text(answerText),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ));
  }
}

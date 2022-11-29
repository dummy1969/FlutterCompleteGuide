// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function(int index) selectHandler;

  const Answer({
    Key? key,
    required this.selectHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            selectHandler;
          },
          style: TextButton.styleFrom(backgroundColor: Colors.blue),
          child: const Text('Answer 1')),
    );
  }
}

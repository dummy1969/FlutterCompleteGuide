import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyStateApp();
  }
}

class _MyStateApp extends State<MyApp> {
  int _answerIndex = 0;

  void _answerChosen(int ans) {
    setState(() {
      _answerIndex = ans;
      debugPrint(ans.toString());
    });
  }

  void answerComeDacorso() {
    debugPrint('bottone premuto');
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = ['1 domanda', '2 domanda', '3 domanda'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My app'),
        ),
        body: Column(
          children: [
            Text(questions[_answerIndex]),
            ElevatedButton(
                onPressed: () => _answerChosen(0),
                child: const Text('Answer 1')),
            ElevatedButton(
                onPressed: () => _answerChosen(1),
                child: const Text('Answer 2')),
            ElevatedButton(
                onPressed: () => _answerChosen(2),
                child: const Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}

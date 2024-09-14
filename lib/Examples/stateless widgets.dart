import 'package:flutter/material.dart';

//Stateless widget can't rerender after changing the state, just after changing the input.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex += 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['what\'s your name?', 'what\'s your age?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('app bar'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            //RaisedButton(),
            ElevatedButton(onPressed: answerQuestion, child: Text('button1')),
            ElevatedButton(onPressed: answerQuestion, child: Text('button2')),
            ElevatedButton(onPressed: answerQuestion, child: Text('button3')),
          ],
        ),
      ),
    );
  }
}

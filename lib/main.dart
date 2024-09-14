import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //Connects between MyAppState and MyApp classes
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

//The generic annotation is the connection of the MyAppState and the MyApp classes
class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
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

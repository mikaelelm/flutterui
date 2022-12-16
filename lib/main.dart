import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState((){
      _questionIndex = _questionIndex + 1;
    }
    );

    print(
        'Answer Chosen!'
    );
  }

  @override
  Widget build(BuildContext context) {
    var questions =  [
      {'questionText': 'what\'s your favorite color?',
        'answers': ['Red', 'Blue','Green','Yellow'],
      },
      {'questionText': 'what\'s your favorite animal',
        'answers': ['Cat', 'Dog','Lion','Horse'],
      },
      {'questionText': 'what\'s your favorite food',
        'answers': ['Rice', 'Fufu','Pizza','Omolette'],
      }
    ];
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children:[
            Question(questions[_questionIndex]['questionText'] as String ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final  resultstorer;
  final String answerText ;

  Answer(this.resultstorer,this.answerText);
  @override

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
       child: ElevatedButton(
           style: ButtonStyle(
             backgroundColor: MaterialStateProperty.all(Colors.yellow),
           ),
           child: Text(answerText),
           onPressed: resultstorer,
       ),
    );
  }



}
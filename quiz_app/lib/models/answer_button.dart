import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

AnswerButton(this.answerText,this.onTap,
{super.key/*,named argument eg: super.key,required this.answerText, required this.onTap */});

final String answerText;
//function 
void Function() onTap ;


  @override
Widget build(context){

  return ElevatedButton(onPressed: onTap, 
  style: ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
    backgroundColor: Color.fromARGB(255, 127, 85, 177),
    foregroundColor: Color.fromARGB(255, 255, 225, 224),
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(40),
     ),
  ),
  child: Text(answerText, textAlign: TextAlign.center,), );
}
}
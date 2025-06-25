import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary.dart';
//class extends statless
class QuestionsSummaryItem extends StatelessWidget{

//constructor accepting summary data 
QuestionsSummaryItem({super.key, required this.questionIndex, required this.question, required this.userAnswer, required this.correctAnswer });

 int questionIndex;
String question;
String userAnswer;
String correctAnswer;

@override
Widget build(BuildContext context){

// variable to check if the user answer is correct 
 var isCorrect = userAnswer==correctAnswer ;

return Row(
  children: [
    //circle question index
    Container(
      //width height box alignment box decoration - shape and color
      width: 20,
      height: 20,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCorrect?const Color.fromARGB(255, 211, 202, 121):const Color.fromARGB(255, 166, 44, 44),
      ),
    )

  ],
);


}


}
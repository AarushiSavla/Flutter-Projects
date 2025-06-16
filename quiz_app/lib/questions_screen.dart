import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/data/questions.dart';

//statefull 
class QuestionsScreen extends StatefulWidget{
//constructor

  QuestionsScreen({super.key});

@override
State <QuestionsScreen> createState() {
//return _widget
return _QuestionsScreenState();

}

}


//class the above returned widget extends state
class  _QuestionsScreenState extends State<QuestionsScreen> {
  
  var currentQuestionIndex = 0;

//method to increase the question index 
 void answerQuestion(){

//to reexecute build method 
setState(() {
  
//currentQuestionIndex = currentQuestionIndex +1;
//currentQuestionIndex += 1; 
currentQuestionIndex ++;

});
 }
//build method 


Widget build(context){

// variable storing the current question from the list 

var currentQuestion = questions[currentQuestionIndex];



  //wrapping the column widget with sized box to take as much width as is availible'double.infinity'
//RETURNS THE QUESTION AND OPTIONS FOR IT USING BUTTONS 


  return SizedBox(
    width:double.infinity,
    child: Container(
      margin: EdgeInsets.all(100),
      child: Column(
        //centering the content - vertical alignment
        mainAxisAlignment: MainAxisAlignment.center,
        //horizontal alignment 
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
      
          Text(
          currentQuestion.text,
          textAlign: TextAlign.center,
           style:TextStyle(
            color:  CupertinoColors.extraLightBackgroundGray,
            
            
          ),),
          //some spacing
          const SizedBox(height: 50,),
        //accessing a lis and mapping it to a widget instead of manually calling it 
        /*spreading : '...'*/
        ...currentQuestion.getShuffled().map((answer){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AnswerButton(answer,answerQuestion),
              SizedBox(height: 20)
            ],
          );
        }),
      
      
         /* AnswerButton(currentQuestion.answers[0],(){}),
          AnswerButton(currentQuestion.answers[1],(){}),
          AnswerButton(currentQuestion.answers[2],(){}),
          AnswerButton(currentQuestion.answers[3],(){}),*/
      
          
          //for named argument eg.   AnswerButton(answerText: 'answer', onTap:(){}),
      
      
        ],
      ),
    ),
  );
}

}

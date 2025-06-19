import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

//statefull 
class QuestionsScreen extends StatefulWidget{
//constructor

  QuestionsScreen({super.key,required this.onSelectAnswer});

  void Function(String answer)onSelectAnswer;


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
 void answerQuestion(String selectedAnswers){

  widget.onSelectAnswer(selectedAnswers);
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
      margin: EdgeInsets.fromLTRB(250, 100, 250, 100),
      child: Column(
        //centering the content - vertical alignment
        mainAxisAlignment: MainAxisAlignment.center,
        //horizontal alignment 
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
      
          Text(
          currentQuestion.text,
          textAlign: TextAlign.center,
           style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 250, 227, 198),
            fontSize: 20,
            fontWeight: FontWeight.bold,
           ),
            
            
          ),
          //some spacing
          const SizedBox(height: 50,),
        //accessing a lis and mapping it to a widget instead of manually calling it 
        /*spreading : '...'*/
        ...currentQuestion.getShuffled().map((answer){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AnswerButton(answer,
              /*on tap: */(){
                answerQuestion(answer);
              }),
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

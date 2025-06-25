import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:quiz_app/start_screen.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({super.key, required this.chosenAnswer,required this.onPressed });

  final List<String> chosenAnswer;
  final Function() onPressed;

  //function to map ques with correct ans

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for(var i = 0; i<chosenAnswer.length ; i++){
      summary.add({
        'question_index':i,
        'question':questions[i].text,
        'correct_answer':questions[i].answers[0],
        'user_answer': chosenAnswer[i]
      });
    }

    return summary;
  }

  var activeScreen = 'results-screen';
  
    
  Widget build(BuildContext content) {

     final summaryData = getSummaryData();
    final numTotalQues = questions.length;
    final numCorrectQues = summaryData.where((data){
      return data['user_answer']==data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.only(right: 250,left: 250),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text('$numCorrectQues out of $numTotalQues answered correctly',style: TextStyle(
              color:CupertinoColors.extraLightBackgroundGray,
              fontSize: 20,
             ),
             textAlign: TextAlign.center,),
            SizedBox(height: 30),
            QuestionsSummary(summaryData),
            SizedBox(height: 30),
            TextButton(
              onPressed: onPressed,
              child: Text('restart quiz'),
            ),
          ],
        ),
      ),
    );
  }
}

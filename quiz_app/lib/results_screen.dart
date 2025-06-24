import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;

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
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.fromLTRB(250, 50, 250, 10),
        child: Column(
          children: [
            QuestionsSummary(getSummaryData()),
            SizedBox(height: 30),
            Text('list of answers'),
            SizedBox(height: 30),
            TextButton(
              onPressed: () {
                //setState(){
                // if (activeScreen== 'results-screen'){
                //   activeScreen='start-screen';
                // }
                //}
              },
              child: Text('restart quiz'),
            ),
          ],
        ),
      ),
    );
  }
}

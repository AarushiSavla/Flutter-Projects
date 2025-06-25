import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/question_summary_item.dart';
class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(this.summaryData,{super.key});

  List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    
   
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          //convert the list of map ob to list of widgets
          children:
              summaryData.map((data) {
return QuestionsSummaryItem(
                  questionIndex: data['question_index']as int,
                  question: data['question'] as String,
                  userAnswer: data['user_answer'] as String,
                  correctAnswer: data['correct_answer'] as String,
                );
                // return Row(
                //   children: [
                //     Text(((data['question_index'] as int) + 1).toString()),
                //     Expanded(
                //       child: Column(
                //         children: [
                //           Text(data['question'] as String),
                //           Text(data['user_answer'] as String),
                //           Text(data['correct_answer'] as String),
                //         ],
                //       ),
                //     ),
                //   ],
                // );
             }).toList(),
            
        ),
      ),
    );
  }
}

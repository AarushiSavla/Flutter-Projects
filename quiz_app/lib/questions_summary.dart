import 'package:flutter/material.dart';
import 'package:quiz_app/results_screen.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(this.summaryData,{super.key});

  List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      //convert the list of map ob to list of widgets
      children:
          summaryData.map((data) {
            return Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String),
                      Text(data['user_answer'] as String),
                      Text(data['correct_answer'] as String),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
    );
  }
}

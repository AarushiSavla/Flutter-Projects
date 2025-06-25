import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary.dart';

//class extends statless
class QuestionsSummaryItem extends StatelessWidget {
  //constructor accepting summary data
  QuestionsSummaryItem({
    super.key,
    required this.questionIndex,
    required this.question,
    required this.userAnswer,
    required this.correctAnswer,
  });

  int questionIndex;
  String question;
  String userAnswer;
  String correctAnswer;

  @override
  Widget build(BuildContext context) {
    // variable to check if the user answer is correct
    var isCorrect = userAnswer == correctAnswer;

    return Row(
      
      crossAxisAlignment: CrossAxisAlignment.center,
      
      children: [
        //circle question index
        Container(
          //width height box alignment box decoration - shape and color
          
          width: 20,
          height: 20,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:
                isCorrect
                    ? const Color.fromARGB(255, 255, 234, 216)
                    : const Color.fromARGB(255, 232, 152, 138),
          ),
          child: Text(
            (questionIndex + 1).toString(),
            style: TextStyle(color: Colors.white),
          ),
        ),

        const SizedBox(height: 30),

        //column which contains the question , user answer in purple and correct answer in yellow
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: [
              SizedBox(height: 5,),
              Text(
                question,
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              Text(
                userAnswer,
                style: TextStyle(
                  color: const Color.fromARGB(255, 42, 20, 88),
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                correctAnswer,
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 234, 216),
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

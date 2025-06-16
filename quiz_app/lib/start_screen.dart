import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  //constructor func
  const StartScreen( this.startQuiz,{super.key});

final void Function() startQuiz;

  @override
  Widget build(context) {
    // wrap the text widget in center so that thw whole screen has bg color
    return Center(
      //clumn for multiple wigets in an vertical order
      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: [
          //children includes list of wigets
          Image.asset('assets/images/quiz-logo.png', width: 300,
          //making the img transparent
          color: const Color.fromARGB(150, 255, 255, 255),
          ),

          SizedBox(height: 25),

          Text(
            'learn Flutter the fun way !',
            style: TextStyle(
              color: CupertinoColors.extraLightBackgroundGray,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 25),
          // (){} is an empty annonymous function
          //include an icon in the button
          OutlinedButton.icon(
            onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: BorderSide(
              color: Colors.white,
            ),
          ),
          icon: Icon(Icons.arrow_right_alt),
          label: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}

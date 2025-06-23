import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/questions.dart';

//shoukd contain material app
//should be stateful widget

class Quiz extends StatefulWidget {
  //constructor
  Quiz({super.key});

  //state create state wala
  State<Quiz> createState() {
    // return _classname
    return _QuizState();
  }
}

// _classname extends state
class _QuizState extends State<Quiz> {
  /*  store the startscreen widget in a variable
   for the active screen variable to be less restrictive and accepts all widgets instead of just start screen use widget instead of
  //? means accepts null value */

  //store list of chosed answers for the result screen
  List<String> selectedAnswers =[];
  var activeScreen = 'start-screen';

  //function to add the chosen answers to the list
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

  //when the questions are over switch bto results screen 
  if (selectedAnswers.length==questions.length){
    setState(() {
      selectedAnswers=[];      activeScreen = 'start-screen';
    });
  }

  }

  // a function to switch screen tothe questions screen
  void switchScreen() {
    //setState makes the build method re-execute
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  //build
  Widget build(context) {
    //if statements 
    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'questions-screen'){
      screenWidget = QuestionsScreen(onSelectAnswer : chooseAnswer,);
    }

    //retun material app with all its content
    return MaterialApp(
      home: Scaffold(
        body: Container(
          //box decoration for background color using gradient
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(75, 30, 199, 0.597),
                const Color.fromARGB(141, 94, 58, 193),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
             
        ),
      ),
    );
  }
}

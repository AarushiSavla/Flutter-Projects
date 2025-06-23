import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

class ResultsScreen extends StatelessWidget{
  var activeScreen = 'results-screen';
   Widget build(content){
    return SizedBox(
      width: double.infinity,
      child: Container(
         margin: EdgeInsets.fromLTRB(250, 100, 250, 100),
        child: Column(
          children: [
            Text('you answered x out of y questions!'),
            SizedBox(height: 30,),
            Text('list of answers'),
               SizedBox(height: 30,),
               TextButton(onPressed: (){
               setState(){
                if (activeScreen== 'results-screen'){
                  activeScreen='start-screen';
                }
               }
               }, child: Text('restart quiz'))
                      ],
        ),
      ),
    );
  }

}
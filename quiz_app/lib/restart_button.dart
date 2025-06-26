import 'package:flutter/material.dart';
import 'package:quiz_app/results_screen.dart';

class RestartButton extends StatelessWidget {

RestartButton({super.key, required this.onPressed });

void Function() onPressed;

@override
 Widget build(BuildContext context){

  return Container(
    
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30)
    ),
    child: TextButton.icon(onPressed: onPressed,
    style: TextButton.styleFrom(
      backgroundColor: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
      
    ),
    icon: Icon(Icons.refresh,color:  Colors.deepPurple),
    label: Text('restart',
    style: TextStyle(
      color:  Colors.deepPurple,
    ),),
  ),
  );

 }

}
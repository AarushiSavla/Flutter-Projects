import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  //ONE WAY OF INITIALIZING
//const  StyledText({super.key});:outputText = text;
//String outputText

  const StyledText(this.text, {super.key}); //SHORT CUT OF INTIALIZING

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.orange,
        fontSize: 40,
      ),
    );
  }
}

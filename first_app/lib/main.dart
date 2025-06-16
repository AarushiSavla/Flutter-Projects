import 'package:flutter/material.dart';
import 'package:first_app/gradiant_color.dart';
void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradiantContainer( Color.fromARGB(255, 250, 227, 198),
            Color.fromARGB(255, 250, 164, 198) )
      ),
    ),
  ); //executing the function
}


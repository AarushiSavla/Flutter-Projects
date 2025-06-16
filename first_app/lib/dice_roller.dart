import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

var currentRollDice = 1; 

void rollDice(){
  setState(() {
   currentRollDice = Random().nextInt(6)+1;
     });        
  

  //print('Changing image honeybun');
}


  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentRollDice.png',
          width: 500,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              //padding:const  EdgeInsets.only(top: 20,
              //),
              foregroundColor: const Color.fromARGB(255, 83, 59, 77),
              textStyle: const TextStyle(
                fontSize: 20,
              )),
          child: const Text('roll dice pookie'),
        )
      ],
    );
  }
}

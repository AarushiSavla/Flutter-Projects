import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment =
    Alignment.topLeft; // this variable container will not change
var endAlignment = Alignment.bottomRight;

class GradiantContainer extends StatelessWidget {
  const GradiantContainer(this.colorone, this.colortwo, {super.key});

  final colorone;
  final colortwo;

  void rollDice() {
    //...
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorone,
            colortwo,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
 

//shift alt a
/* 
   Color.fromARGB(255, 250, 227, 198),
            Color.fromARGB(255, 250, 164, 198) */

//alternate way named parameter
/* 
final startAlignment =
    Alignment.topLeft; // this variable container will not change
var endAlignment = Alignment.bottomRight;

class GradiantContainer extends StatelessWidget {
  const GradiantContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: StyledText('aarushi')),
    );
  }
} */

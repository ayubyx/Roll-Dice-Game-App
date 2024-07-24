import 'package:flutter/material.dart';
import 'package:roll_dice/components/dice_roller.dart';

class GradiantContainer extends StatefulWidget {
  const GradiantContainer({super.key});

  @override
  State<GradiantContainer> createState() => _GradiantContainerState();
}

class _GradiantContainerState extends State<GradiantContainer> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 80, 2, 38),
          Color.fromARGB(255, 69, 15, 122)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: const Center(
          child: DiceRoller(),
        )
      ),
    );
  }
}

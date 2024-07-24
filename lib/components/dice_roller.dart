import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  final random = Random();
  int dicenumber = 1;
  //? rolling function
  void rollDice() {
    setState(() {
      dicenumber = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/dice-$dicenumber.png',
            width: 200,
          ),
          const SizedBox(height: 15),
          TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              onPressed: rollDice,
              child: const Text(
                "Roll Dice",
                style: TextStyle(letterSpacing: 1),
              ))
        ],
      ),
    );
  }
}

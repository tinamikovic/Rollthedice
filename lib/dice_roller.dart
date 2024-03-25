import 'dart:math';

import 'package:flutter/material.dart';

class Diceroller extends StatefulWidget {
  Diceroller({super.key});

  @override
  State<Diceroller> createState() {
    return _DicerollerState();
  }
}

class _DicerollerState extends State<Diceroller> {
  var currentDiceroll = 2;

  void Rolldice() {
    setState(() {
      currentDiceroll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center, // Centers the column vertically
      children: [
        Center(
          // Centers the image horizontally
          child: Image.asset(
            "assets/dice-$currentDiceroll.png",
            width: 200,
          ),
        ),
        TextButton(
            onPressed: Rolldice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text("Roll dice"))
      ],
    );
  }
}

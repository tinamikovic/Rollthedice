import 'package:flutter/material.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  void rolldice() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Centers the column vertically
        children: [
          Center(
            // Centers the image horizontally
            child: Image.asset(
              "assets/dice-1.png",
              width: 200,
            ),
          ),
          TextButton(onPressed: rolldice, child: const Text("Roll dice"))
        ],
      )),
    );
  }
}

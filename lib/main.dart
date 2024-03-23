import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "package:first_app/gradient_container.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 26, 2, 68),
          Color.fromARGB(255, 68, 54, 92),
        ),
      ),
    ),
  );
}

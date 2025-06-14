import 'package:flutter/material.dart';
import 'package:quiz1/start_screen.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
    body: Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [
      Color.fromARGB(255, 172, 6, 213),
      Color.fromARGB(255, 29, 10, 33), 
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    ),
    ),
    child: const StartScreen(),
    ),
    ),
    ),
    );
}

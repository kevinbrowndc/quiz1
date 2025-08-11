import 'package:flutter/material.dart';
import 'package:quiz1/data/questions.dart';
import 'package:quiz1/questions_screen.dart';
import 'package:quiz1/start_screen.dart';
import 'package:quiz1/results_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activescreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activescreen = 'questions-screen';
    });
  }

  

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activescreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activescreen = 'questions-screen';
    });

  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activescreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activescreen == 'results-screen') {
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers, restartQuiz: restartQuiz,);
    }

    return MaterialApp(
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
          child: screenWidget,
        ),
      ),
    );
  }
}


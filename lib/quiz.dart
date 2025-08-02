import 'package:flutter/material.dart';
import 'package:quiz1/data/questions.dart';
import 'package:quiz1/questions_screen.dart';
import 'package:quiz1/start_screen.dart';

class Quiz extends StatefulWidget {
 const Quiz({super.key});
 
  @override
  State <Quiz> createState() {
    return _QuizState();  
  }

}

class _QuizState extends State<Quiz>{
List<String> selectedAnswers = [];
var activescreen = 'start-screen';

  void switchScreen(){
    setState(() {
      activescreen = 'questions-screen';
    });
  }

void chooseAnswer(String Answer)  {
  selectedAnswers.add(Answer);

  if (selectedAnswers.length == questions.length){
    setState(() {
      selectedAnswers = [];
      activescreen = 'start-screen';
    });
  }
}

  @override
  Widget build(context) {
    return  MaterialApp(
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
    child: activescreen == 'start-screen' ? StartScreen(switchScreen) : QuestionsScreen(onSelectAnswer: chooseAnswer,),
    ),
    ),
    );
  }
}
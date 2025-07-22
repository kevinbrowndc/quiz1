import 'package:flutter/material.dart';
import 'package:quiz1/answer_button.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});
  
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}
class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("The Question...", style: TextStyle(color: Colors.white),),
        const SizedBox(height: 30),
        AnswerButton (AnswerText: "Answer 1", onTap: () {}),
        AnswerButton (AnswerText: "Answer 2", onTap: () {}),
        AnswerButton (AnswerText: "Answer 3", onTap: () {}),
      ],),
    );

  }
}
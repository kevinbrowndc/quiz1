import 'package:flutter/material.dart';


class AnswerButton extends StatelessWidget {
  AnswerButton({
    super.key,
    required this.AnswerText, 
    required this.onTap,
  });

  final String AnswerText;
  final void Function() onTap;  

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(),
      child: Text(AnswerText),
      );
  }
}
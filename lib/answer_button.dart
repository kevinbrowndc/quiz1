import 'package:flutter/material.dart';


class AnswerButton extends StatelessWidget {
  const AnswerButton({
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
      
      style: ElevatedButton.styleFrom(
        
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40), 
        backgroundColor: const Color.fromARGB(255, 1, 0, 1), 
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
      child: Text(AnswerText,
      textAlign: TextAlign.center,
      ),
    );
  }
}
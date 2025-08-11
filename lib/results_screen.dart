import 'package:flutter/material.dart';
import 'package:quiz1/data/questions.dart';
import 'package:quiz1/data/questions.dart';
import 'package:quiz1/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers, required this.restartQuiz});

  final List<String> chosenAnswers;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummarayData() {
  final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({'question_index': i, 'question': questions[i].text, 'correct_answer': questions[i].answers[0], 'user_answer': chosenAnswers[i]});
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummarayData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $numCorrectQuestions out $numTotalQuestions questions correctly!'),
            const SizedBox(height: 30),
            QuestionSummary(summaryData),
            const SizedBox(height: 30),


          const SizedBox(
              height: 30,
            ),

            OutlinedButton.icon(
              onPressed: () {
                restartQuiz();
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.restart_alt_outlined),
              label: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
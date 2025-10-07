import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;

  List<Map<String,Object>> getSummaryData(){
    List<Map<String,Object>> summary = [];
    return summary;
  }
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const  Text('You answered X out of Y questions Correctly'),
            const  SizedBox(
              height: 30,
            ),
            const Text('List of Answers and Questions'),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: (){}, 
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
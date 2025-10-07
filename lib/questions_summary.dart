import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 


class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.index,
    required this.isCorrect,
  });

  final int index;      
  final bool isCorrect; 

  @override
  Widget build(BuildContext context) {
    final bgColor = isCorrect
        ? const Color.fromARGB(255, 63, 180, 83)  
        : const Color.fromARGB(255, 217, 70, 70); 
    return Container(
      width: 34,
      height: 34,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
      ),
      child: Text(
        index.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}


class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
   
    return SizedBox(
      height: 350, 
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            final questionIndex = data['question_index'] as int ;
            final questionText = data['question'] as String;
            final userAnswer = data['user_answer'] as String;
            final correctAnswer = data['correct_answer'] as String;
            final isCorrect = userAnswer == correctAnswer;

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  QuestionIdentifier(
                    index: questionIndex,
                    isCorrect: isCorrect,
                  ),
                  const SizedBox(width: 12),
                  
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Text(
                          questionText,
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 6),
                        
                        Text(
                          userAnswer,
                          style: GoogleFonts.lato(
                            color: isCorrect
                                ? const Color.fromARGB(200, 255, 255, 255)
                                : const Color.fromARGB(255, 240, 120, 120),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        
                        Text(
                          correctAnswer,
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 63, 180, 83),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

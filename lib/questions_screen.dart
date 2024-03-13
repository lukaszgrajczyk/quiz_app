import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

import 'package:quiz_app/data/questions_data.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer; //przekazanie z quiz

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

var currentIndex = 0;

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentIndex];

//! PRZEJSCIE DO KOLEJNEGO PYTANIA
    void nextQuestion(String answer) {
      widget.onSelectedAnswer(answer);
      setState(() {
        currentIndex++;
      });
    }

    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(fontSize: 25, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 45),
            ...currentQuestion.getShuffle().map((answer) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnswerButton(
                    btnTxt: answer,
                    onTap: () {
                      nextQuestion(answer);
                    }),
              );
            }),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

import 'package:quiz_app/data/questions_data.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0]; //pierwszy zestaw pytan

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
              currentQuestion.text, //pytanie -nagłowek
              style: const TextStyle(fontSize: 25, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 45),
            ...currentQuestion.getShuffle().map((itemAnswer) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnswerButton(
                  btnTxt: itemAnswer,
                  onTap: () {},
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

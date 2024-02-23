import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions_data.dart';
// import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0]; //pierwszy zestaw pytan

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text, //pytanie -nagłowek
            style: const TextStyle(fontSize: 35, color: Colors.white),
          ),
          const SizedBox(height: 20),
          AnswerButton(
            onTap: () {},
            btnTxt: currentQuestion.answers[0], //odpowiedz 1
          ),
          const SizedBox(height: 20),
          AnswerButton(
            onTap: () {},
            btnTxt: currentQuestion.answers[1],
          ),
          const SizedBox(height: 20),
          AnswerButton(
            onTap: () {},
            btnTxt: currentQuestion.answers[2],
          ),
          const SizedBox(height: 20),
          AnswerButton(
            onTap: () {},
            btnTxt: currentQuestion.answers[3],
          ),
          //for ()...[]
        ],
      ),
    );
  }
}

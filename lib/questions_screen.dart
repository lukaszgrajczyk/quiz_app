import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

import 'package:quiz_app/data/questions_data.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

var currentIndex = 0;

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentIndex]; //pierwszy zestaw pytan

//? onSelectedAnswer:chooseAnswer -- czyli ADD answer to the list after onTap
//widget. zaimplementowany do state z StatefulWidget

    void nextQuestion(String answer) {
      widget.onSelectedAnswer(answer);
      setState(() {
        currentIndex++;
      });
    }
    //chooseAnswer czyli add to the list

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
              //rozdzielone stringi z odpowierdziami i zamienione na osobne przyciski
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnswerButton(
                    //jeden answer button z jedna odpowiedzią
                    btnTxt: answer,
                    onTap: () {
                      nextQuestion(
                          answer); //jest to funkcja dla kazdego z przycisku- zwieksza index pytania i dodaje pytania do listy
                    }),
              );
            }),
          ],
        ),
      ),
    );
  }
}

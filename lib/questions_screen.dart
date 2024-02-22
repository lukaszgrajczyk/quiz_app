import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
// import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Pytanie nr 1',
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
          const SizedBox(height: 20),
          AnswerButton(onTap: () {}, btnTxt: 'Answer 1'),
          const SizedBox(height: 20),
          AnswerButton(onTap: () {}, btnTxt: 'Answer 2'),
          const SizedBox(height: 20),
          AnswerButton(onTap: () {}, btnTxt: 'Answer 3'),
          const SizedBox(height: 20),
          AnswerButton(onTap: () {}, btnTxt: 'Answer 4'),
        ],
      ),
    );
  }
}

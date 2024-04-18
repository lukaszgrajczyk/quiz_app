//Zarzadza przejsciami miedzy ekranami

import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = []; // pusta lista

  var activeScreen = 'start-screen';

  void changeScreen() {
    //! onTap: changeScreen w StartScreen(changeScreen)
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer); //? dodaj wybrana odpowiedz

    if (selectedAnswers.length == questions.length) {
      //pusta lista z wybranymi odp= rowna ilosci
      setState(() {
        selectedAnswers = [];
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(changeScreen);

//! LISTA pytań
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }
//! LISTA z odpowiedziami
    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        chosenAnswer:
            selectedAnswers, //przekazanie wybranych odpowiedzi do resultScr
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 164, 160, 168),
                Color.fromARGB(255, 39, 30, 121),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget, //result or question
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:quiz_app/result_screen.dart';
// import 'package:quiz_app/result_screen.dart';

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

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer); //dodaj zaznaczoną odpowiedz do listy

    if (selectedAnswers.length == questions.length) {
      //ilosc zaznaczonych odpowiedzi == ilosci pytan
      //selectedAnswers = [] - ustawione na nowa czysta liste gdy wyczerpalismy juz wszystkie odpowiedzi
      setState(() {
        selectedAnswers = [];
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }
//
    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        chosenAnswer:
            selectedAnswers, //wybrane odpowiedzi przekazane do ResultScreen
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
          child: screenWidget,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_data.dart';
// import 'package:quiz_app/models/questions_model.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswer,
  });

  final List<String> chosenAnswer;

//ABY DOSTAC SIE DO DANYCH MUSIMY POŁACZYC WYBRANE ODPOWIEDZI Z PYTANIAMI

//CHOSENANSWER -> QUESTIONS [0-6]
// ZACZYNAMY OD wartosci 0;  ZWIEKSZAMY INDEX dopóki WYBRANE ODPOWIEDZI nie są mniejsze jak ilość obiektów w liscie czyli 0d 0-6
//0-6
  List<Map<String, Object>> getSummaryData() {
    // LISTA (key  STRING i value -OBJECT) - typy ktore beda w liscie
    // Pusta Lista do ktorych beda dodawane dane

    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      // summary.add({}) -między {..} umieszczamy wybrane typy
      summary.add({
        'currentIndex': i, // zestaw pytan
        'currentTextQuestion': questions[i].text, //pytanie
        'correctAnswer': questions[i].answers[0], //odpowiedz
        'chosenAnswer': chosenAnswer[i],
      });
    }

    return summary;
  }
// }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You answered X correct and Y uncorrect',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 45),
            const Text(
              'tu hedzie lista',
              style: TextStyle(fontSize: 15, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 45),
            TextButton.icon(
              icon: const Icon(
                Icons.restart_alt_sharp,
                color: Color.fromARGB(255, 243, 242, 240),
              ),
              label: const Text(
                'Restart Quiz',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 254, 254), fontSize: 15),
              ),
              onPressed: () {},

              /*      
              setState(() {
              selectedAnswer = [];       //nie ma listy
              activeScreen = const ResultScreen(); //nie ma active screen
        });*/
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class QuizScreenManage extends StatefulWidget {
  const QuizScreenManage({super.key});

  @override
  State<QuizScreenManage> createState() => _QuizScreenManageState();
}

class _QuizScreenManageState extends State<QuizScreenManage> {
  //! empty list of answers (adding selectedAnswer)
  final List<String> selectedAnswer = [];

  //! Function add answer to the list
  void chooseAnswer(String answer) {
    setState(() {
      selectedAnswer.add(answer);
    });
  }

  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(changeScreen);
    super.initState();
  }

  //! chooseAnswer pass to the QuestionScreen with onTapFunction
  void changeScreen() {
    setState(() {
      activeScreen = QuestionsScreen(
          onSelectedAnswer:
              chooseAnswer); //funkcja przejscia do ekranu i dodania do niego wybranej odpowiedzi
    });
  }

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          // stops: [],
          colors: [
            Color.fromARGB(238, 255, 128, 0),
            Color.fromARGB(224, 68, 12, 237),
            Color.fromARGB(168, 237, 32, 5),
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: activeScreen,
    );
  }
}














 
 
  // ..........................1......................
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(changeScreen);
  //   super.initState();
  // }

  // void changeScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }
  //.
  //.
  //.
  // child: activeScreen
//..........................................................

//............................2.............................


//.
//.
// child: activeScreen == 'first screen'
//           ? StartScreen(changeScreen)
//           : const QuestionsScreen(),

//...........................................................

  // var activeScreen = 'first screen';

  // void changeScreen() {
  //   setState(() {
  //     activeScreen = 'second screen';
  //   });
  // }



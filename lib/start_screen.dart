import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
    this.changeScreen, {
    super.key,
  });

  final void Function() changeScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromARGB(212, 175, 161, 161),
            width: 300,
          ),
          const SizedBox(height: 40.0),
          const Text(
            'Learn Flutter is the best way for you',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
          ),
          const SizedBox(height: 40.0),
          OutlinedButton.icon(
            icon: const Icon(Icons.accessible_forward_sharp),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 254, 254), fontSize: 15),
            ),
            onPressed: changeScreen,
          ),
        ],
      ),
    );
  }
}

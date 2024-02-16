import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(198, 0, 0, 0),
            Color.fromARGB(250, 30, 0, 255),
            Color.fromARGB(255, 115, 187, 6),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              color: const Color.fromARGB(161, 255, 255, 255),
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
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

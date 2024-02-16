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
      child: const Center(
          child: Text(
        'Learn Flutter is the best way',
        style: TextStyle(color: Colors.white, fontSize: 20),
      )),
    );
  }
}

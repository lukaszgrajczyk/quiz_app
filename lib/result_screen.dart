import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
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
            'summary questions',
            style: TextStyle(fontSize: 20, color: Colors.white),
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
          ),
        ],
      ),
    );
  }
}

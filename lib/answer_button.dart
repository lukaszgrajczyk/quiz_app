import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.btnTxt, required this.onTap, super.key});

  final Function() onTap;
  final String btnTxt;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        elevation: 15.0,
        shadowColor: const Color.fromARGB(255, 10, 255, 2),
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
      child: Text(
        btnTxt,
        style: const TextStyle(color: Color.fromARGB(255, 2, 32, 255)),
      ),
    );
  }
}

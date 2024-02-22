import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.onTap, required this.btnTxt, super.key});

  final Function() onTap;
  final String btnTxt;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(btnTxt),
    );
  }
}

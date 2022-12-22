import 'package:flutter/material.dart';
import 'result_btn.dart';
import '../model/quiz_model.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({
    Key? key,
    required this.tuuraButton,
    required this.baskanda,
  }) : super(key: key);

  final bool tuuraButton;
  final void Function(bool) baskanda;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () => baskanda(tuuraButton),
        style: ElevatedButton.styleFrom(
          backgroundColor:
              tuuraButton ? const Color(0xFf4caf52) : const Color(0xFFf7442d),
        ),
        child: Text(
          tuuraButton ? 'Туура' : 'Туура эмес',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

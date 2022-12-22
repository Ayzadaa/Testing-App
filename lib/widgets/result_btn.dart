import 'package:flutter/material.dart';
import 'quiz_btn.dart';

class ResultIcon extends StatelessWidget {
  const ResultIcon({
    Key? key,
    required this.tuuraIcon,
  }) : super(key: key);

  final bool tuuraIcon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      tuuraIcon ? Icons.check : Icons.close,
      color: tuuraIcon ? Colors.green : Colors.red,
    );
  }
}

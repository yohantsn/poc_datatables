import 'package:flutter/material.dart';

class TextGrid extends StatelessWidget {
  TextGrid({@required this.text, @required this.priority});
  final text;
  final priority;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Text(
        text,
        style: TextStyle(
            color: getColorText(), fontSize: 12, fontWeight: FontWeight.w700),
        textAlign: TextAlign.left,
      ),
    );
  }

  Color getColorText() {
    switch (priority) {
      case 0:
        return Colors.red;
      case 1:
        return Colors.orange;
      case 2:
        return Colors.yellow;
      case 3:
        return Colors.green;
      default:
        return Colors.white;
    }
  }
}

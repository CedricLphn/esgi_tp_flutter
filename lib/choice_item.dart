import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final Function() onTap;

  const ChoiceItem(
      {super.key,
      required this.title,
      required this.color,
      required this.textColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Text(
            title,
            style: TextStyle(fontSize: 12, color: textColor),
            textAlign: TextAlign.left,
          ),
        ));
  }
}

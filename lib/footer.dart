import 'choice_item.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  final List<String> choices;
  final Function(List<String> choices) onTap;

  const Footer({super.key, required this.choices, required this.onTap});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  Color defaultTextColor = const Color.fromRGBO(236, 236, 236, 1);
  Color selectedTextColor = Colors.amber;

  List<String> chooseChoice = [];

  _toggleChoices(String choice) {
    setState(() {
      if (chooseChoice.contains(choice)) {
        chooseChoice.remove(choice);
      } else {
        chooseChoice.add(choice);
      }
    });
  }

  _generateListChoices() {
    return Wrap(
      direction: Axis.horizontal,
      children: [
        for (var choice in widget.choices)
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: ChoiceItem(
              title: choice,
              textColor: Colors.black,
              color: chooseChoice.contains(choice)
                  ? selectedTextColor
                  : defaultTextColor,
              onTap: () {
                _toggleChoices(choice);
                widget.onTap(chooseChoice);
              },
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.topLeft,
        child: _generateListChoices());
  }
}

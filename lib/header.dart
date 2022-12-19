import 'package:flutter/material.dart';

import 'choice_item.dart';
import 'main.dart';

class Header extends StatelessWidget {
  final List<String> choices;

  const Header({Key? key, required this.choices}) : super(key: key);

  Widget _showAllChoices() {
    if (choices.isEmpty) {
      return const Text("Cliquez sur les choix en dessous !");
    }

    return Wrap(
      direction: Axis.horizontal,
      children: [
        for (var choice in choices)
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: ChoiceItem(
              title: choice,
              textColor: Colors.black,
              color: Config.defaultTextColor,
              onTap: () {},
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      color: Colors.deepPurple,
      child: DefaultTextStyle(
        style: const TextStyle(color: Colors.white),
        child: Column(
          children: [
            const Align(
                alignment: Alignment.topLeft,
                child: Text("Vos choix", style: TextStyle(fontSize: 30.0))),
            Align(alignment: Alignment.topLeft,
                child: _showAllChoices()
            ),
          ],
        ),
      ),
    );
  }
}

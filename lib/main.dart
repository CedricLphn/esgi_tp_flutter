import 'footer.dart';
import 'header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: const Home(),
    );
  }
}

class Config {
  static Color defaultTextColor = const Color.fromRGBO(236, 236, 236, 1);
  static Color selectedTextColor = Colors.amber;

  static final List<String> choices = [
    "cinema",
    "petanque",
    "fitness",
    "League of Legend",
    "basket",
    "shopping",
    "programmation"
  ];
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> chooseChoice = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Flexible(
                  flex: 2,
                  child: Header(
                    choices: chooseChoice,
                  )),
              Flexible(
                  flex: 1,
                  child: Footer(
                    choices: Config.choices,
                    onTap: (List<String> choices) {
                      setState(() {
                        chooseChoice = choices;
                      });
                    },
                  )
              ),
            ],
      )),
    );
  }
}

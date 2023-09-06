import 'package:assignment1/Widget/Contanier.dart';
import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

bool onTurn = true;
List<String> display = ["", "", "", "", "", "", "", "", ""];

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {},
          child: ListView.separated(
            itemCount: 3,
            itemBuilder: (context, index) => Contanier(),
            separatorBuilder: (context, index) => SizedBox(
              height: 5,
            ),
          ),
        ),
      ),
    );
  }

  void play(index) {
    if (onTurn && display == "") {
      display[index] = "O";
    } else {
      display[index] = "X";
    }

    onTurn != onTurn;
  }
}

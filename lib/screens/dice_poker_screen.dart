import 'dart:math';

import 'package:dice_pro/const.dart';
import 'package:flutter/material.dart';

class DicePokerScreen extends StatefulWidget {
  const DicePokerScreen({super.key});

  @override
  State<DicePokerScreen> createState() => _DicePokerState();
}

class _DicePokerState extends State<DicePokerScreen> {
  int diceNumber1 = Random().nextInt(6) + 1;
  int diceNumber2 = Random().nextInt(6) + 1;
  int diceNumber3 = Random().nextInt(6) + 1;
  int diceNumber4 = Random().nextInt(6) + 1;
  int diceNumber5 = Random().nextInt(6) + 1;
  void rollDice() {
    setState(() {
      diceNumber1 = Random().nextInt(6) + 1;
      diceNumber2 = Random().nextInt(6) + 1;
      diceNumber3 = Random().nextInt(6) + 1;
      diceNumber4 = Random().nextInt(6) + 1;
      diceNumber5 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: kBackgroundColor(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    tooltip: "Rules",
                    onPressed: () {
                      rollDice();
                    },
                  )
                ],
              ),
              Expanded(
                child: Opacity(
                  opacity: 0.5,
                  child: TextButton(
                    child: Image.asset('images/$diceNumber1.png'),
                    onPressed: () {
                      rollDice();
                    },
                  ),
                ),
              ),
              Expanded(
                child: Opacity(
                  opacity: 0.5,
                  child: TextButton(
                    child: Image.asset('images/$diceNumber2.png'),
                    onPressed: () {
                      rollDice();
                    },
                  ),
                ),
              ),
              Expanded(
                child: Opacity(
                  opacity: 0.5,
                  child: TextButton(
                    child: Image.asset('images/$diceNumber3.png'),
                    onPressed: () {
                      rollDice();
                    },
                  ),
                ),
              ),
              Expanded(
                child: Opacity(
                  opacity: 0.5,
                  child: TextButton(
                    child: Image.asset('images/$diceNumber4.png'),
                    onPressed: () {
                      rollDice();
                    },
                  ),
                ),
              ),
              Expanded(
                child: Opacity(
                  opacity: 0.5,
                  child: TextButton(
                    child: Image.asset('images/$diceNumber5.png'),
                    onPressed: () {
                      rollDice();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 20, right: 10, left: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 8, backgroundColor: Colors.blueAccent),
                      onPressed: () {
                        rollDice();
                      },
                      child: const Text(
                        'Roll',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
import 'package:flutter/material.dart';
import 'package:dice_pro/const.dart';
import 'dart:math';

class NormalDiceScreen extends StatefulWidget {
  const NormalDiceScreen({super.key});

  @override
  State<NormalDiceScreen> createState() => _NormalDiceScreenState();
}

class _NormalDiceScreenState extends State<NormalDiceScreen> {
  int diceNumber = Random().nextInt(6) + 1;

  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
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
              Row(),
              Row(),
              Image.asset('images/$diceNumber.png'),
              Padding(
                padding: const EdgeInsets.only(
                    top: 75, bottom: 50, right: 10, left: 10),
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

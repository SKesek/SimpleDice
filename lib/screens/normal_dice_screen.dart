import 'package:flutter/material.dart';
import 'package:dice_pro/const.dart';
import 'dart:math';
import 'package:dice_pro/logic.dart';

class NormalDiceScreen extends StatefulWidget {
  const NormalDiceScreen({super.key, required this.cNumber});

  final int cNumber;

  @override
  State<NormalDiceScreen> createState() => _NormalDiceScreenState();
}

class _NormalDiceScreenState extends State<NormalDiceScreen> {
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
    CheckNumber checkNumber = CheckNumber(widget.cNumber);
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: kBackgroundColor(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: checkNumber.dice12(widget.cNumber),
                      child: Expanded(
                          child: Image.asset('images/$diceNumber1.png')),
                    ),
                    Visibility(
                      visible: checkNumber.dice12(widget.cNumber),
                      child: Expanded(
                          child: Image.asset('images/$diceNumber2.png')),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Image.asset('images/$diceNumber3.png')),
                    Expanded(child: Image.asset('images/$diceNumber4.png')),
                  ],
                ),
                Visibility(
                    visible: checkNumber.dice5(widget.cNumber),
                    child: Expanded(
                        child: Image.asset('images/$diceNumber5.png'))),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 40, bottom: 20, right: 10, left: 10),
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
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:dice_pro/const.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

class NormalOneDiceScreen extends StatefulWidget {
  const NormalOneDiceScreen({super.key});

  @override
  State<NormalOneDiceScreen> createState() => _NormalOneDiceScreenState();
}

class _NormalOneDiceScreenState extends State<NormalOneDiceScreen> {
  int diceNumber1 = Random().nextInt(6) + 1;

  void rollDice() {
    setState(() {
      diceNumber1 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                Expanded(child: Image.asset('images/$diceNumber1.png')),
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
                        child: Text('Roll',
                            style: GoogleFonts.lobster(
                              textStyle: const TextStyle(
                                  color: Colors.white, fontSize: 25),
                            ))),
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

import 'package:dice_pro/const.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

class ManywallScreen extends StatefulWidget {
  const ManywallScreen({super.key, required this.numberWall});

  final int numberWall;

  @override
  State<ManywallScreen> createState() => _ManywallScreentState();
}

class _ManywallScreentState extends State<ManywallScreen> {
  late int number;
  @override
  void initState() {
    super.initState();
    number = widget.numberWall;
  }

  void rollDice() {
    setState(() {
      number = Random().nextInt(widget.numberWall) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kBackgroundColor(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('images/empty_dice.png'),
                  Text(
                    number.toString(),
                    style: const TextStyle(color: Colors.black, fontSize: 100),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 40, bottom: 50, right: 10, left: 10),
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
                                color: Colors.white, fontSize: 20),
                          ))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

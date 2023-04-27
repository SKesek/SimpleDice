import 'package:flutter/material.dart';
import 'package:dice_pro/const.dart';
import 'package:dice_pro/styles/custon_button.dart';

class NormalDice extends StatelessWidget {
  const NormalDice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kBackgroundColor(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                title: 'Zwykłe kości',
                icon: Image.asset(
                  'images/dice_logo.png',
                  scale: 10,
                ),
              ),
              CustomButton(
                title: 'Wielościenne kości',
                icon: Image.asset(
                  'images/dice_roll_logo.png',
                  scale: 14,
                ),
              ),
              CustomButton(
                title: 'Kościany poker',
                icon: Image.asset(
                  'images/dice_logo.png',
                  scale: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

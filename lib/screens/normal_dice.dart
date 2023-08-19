import 'package:flutter/material.dart';
import 'package:dice_pro/const.dart';

import '../styles/custon_button.dart';
import 'normal_dice_screen.dart';

class NormalDice extends StatelessWidget {
  const NormalDice({super.key});

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
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/logo.png',
                        scale: 5,
                      ),
                      const Text(
                        'Zwykłe kości',
                        style: TextStyle(fontSize: 45, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Column(
                    children: [
                      CustomButton(
                        title: '1 Kość',
                        icon: Image.asset(
                          'images/empty.png',
                        ),
                        screenName: const NormalDiceScreen(
                          cNumber: 1,
                        ),
                      ),
                      CustomButton(
                        title: '2 Kości',
                        icon: Image.asset(
                          'images/empty.png',
                        ),
                        screenName: const NormalDiceScreen(cNumber: 2),
                      ),
                      CustomButton(
                        title: '3 Kości',
                        icon: Image.asset(
                          'images/empty.png',
                        ),
                        screenName: const NormalDiceScreen(cNumber: 3),
                      ),
                      CustomButton(
                        title: '4 Kości',
                        icon: Image.asset(
                          'images/empty.png',
                        ),
                        screenName: const NormalDiceScreen(cNumber: 4),
                      ),
                      CustomButton(
                        title: '5 Kości',
                        icon: Image.asset(
                          'images/empty.png',
                        ),
                        screenName: const NormalDiceScreen(cNumber: 5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

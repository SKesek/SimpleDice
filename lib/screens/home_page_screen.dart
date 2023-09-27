import 'package:dice_pro/screens/multiwall_number_screen.dart';
import 'package:dice_pro/screens/normal_dice.dart';
import 'package:flutter/material.dart';
import 'package:dice_pro/styles/custon_button.dart';
import 'dice_poker_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/dice_logo2.png',
                  scale: 5,
                ),
                Text('Simple Dice',
                    style: const TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 50,
                        color: Colors.white)),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomButton(
                  icon: Image.asset(
                    'images/logo.png',
                    scale: 13,
                  ),
                  title: 'Normal dice',
                  screenName: const NormalDice(),
                ),
                CustomButton(
                  icon: Image.asset(
                    'images/dice_roll_logo.png',
                    scale: 14,
                  ),
                  title: 'Multiwall dice',
                  screenName: const MultiwallNumberScreen(),
                ),
                CustomButton(
                  icon: Image.asset(
                    'images/poker_dice_logo.png',
                    scale: 13,
                  ),
                  title: 'Dice poker',
                  screenName: const DicePokerScreen(),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Text(
              'by KristofDev',
              style: const TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: 'Lobster'),
            ),
          )
        ],
      ),
    );
  }
}

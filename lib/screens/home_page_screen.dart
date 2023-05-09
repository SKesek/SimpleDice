import 'package:dice_pro/screens/normal_dice.dart';
import 'package:flutter/material.dart';
import 'package:dice_pro/styles/custon_button.dart';

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
                  'images/logo.png',
                  scale: 6,
                ),
                const Text(
                  'Simple Dice',
                  style: TextStyle(fontSize: 45, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomButton(
                  title: 'Zwykłe kości',
                  icon: Image.asset(
                    'images/dice_logo.png',
                    scale: 10,
                  ), onPressed: Navigator.push(context, MaterialPageRoute(builder: builder)),
                ),
                CustomButton(
                  title: 'Wielościenne kości',
                  icon: Image.asset(
                    'images/dice_roll_logo.png',
                    scale: 14,
                  ), onPressed: null,
                ),
                CustomButton(
                  title: 'Kościany poker',
                  icon: Image.asset(
                    'images/dice_logo.png',
                    scale: 10,
                  ), onPressed: ,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

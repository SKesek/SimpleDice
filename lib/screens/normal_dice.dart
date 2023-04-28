import 'package:flutter/material.dart';
import 'package:dice_pro/const.dart';
import 'package:dice_pro/styles/custon_button.dart';

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
                      'images/dice_logo.png',
                      scale: 5,
                    ),
                    const Text(
                      'Zwykłe kości',
                      style: TextStyle(fontSize: 45, color: Colors.white),
                    ),
                  ],
                )),
                Column(
                  children: [
                    CustomButton(
                      title: '1 Kość',
                      icon: Image.asset(
                        'images/empty.png',
                      ),
                    ),
                    CustomButton(
                      title: '2 Kości',
                      icon: Image.asset(
                        'images/empty.png',
                      ),
                    ),
                    CustomButton(
                      title: '3 Kości',
                      icon: Image.asset(
                        'images/empty.png',
                      ),
                    ),
                    CustomButton(
                      title: '4 Kości',
                      icon: Image.asset(
                        'images/empty.png',
                      ),
                    ),
                    CustomButton(
                      title: '5 Kości',
                      icon: Image.asset(
                        'images/empty.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

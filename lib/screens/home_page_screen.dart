import 'package:flutter/material.dart';
import 'package:dice_pro/styles/custon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 6, 56, 97),
              Color.fromARGB(255, 12, 112, 220),
            ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          ),
          child: Center(
            child: Column(
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
                        'Dice Pro',
                        style: TextStyle(fontSize: 60, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      CustomButton(
                        title: 'Zwykłe kości',
                      ),
                      CustomButton(
                        title: 'Wielościenne kości',
                      ),
                      CustomButton(
                        title: 'Kościany poker',
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

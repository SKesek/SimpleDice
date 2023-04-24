import 'package:flutter/material.dart';
import 'package:dice_pro/styles/custon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DicePro'),
        backgroundColor: const Color.fromARGB(255, 6, 56, 97),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 6, 56, 97),
            Color.fromARGB(255, 12, 112, 220),
          ], begin: Alignment.bottomLeft, end: Alignment.topRight),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CustomButton(title: 'Zwykłe kości'),
          ],
        )),
      ),
    );
  }
}

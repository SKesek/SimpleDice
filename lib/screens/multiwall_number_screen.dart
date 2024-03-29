import 'package:dice_pro/const.dart';
import 'package:dice_pro/screens/manywall_screen.dart';
import 'package:flutter/material.dart';
import 'package:dice_pro/styles/custon_button.dart';

class MultiwallNumberScreen extends StatefulWidget {
  const MultiwallNumberScreen({super.key});

  @override
  State<MultiwallNumberScreen> createState() => _MultiwallNumberScreenState();
}

class _MultiwallNumberScreenState extends State<MultiwallNumberScreen> {
  int numberWall = 7;
  void incrementNumber() {
    setState(() {
      numberWall++;
      if (numberWall == 31) {
        numberWall = 4;
      }
    });
  }

  void decrementNumber() {
    setState(() {
      numberWall--;
      if (numberWall == 3) {
        numberWall = 30;
      }
    });
  }

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
                  Column(children: [
                    Text(
                      'How many walls should there be on the dice?',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Lobster'),
                    ),
                    ElevatedButton(
                        onPressed: incrementNumber,
                        child: const Icon(Icons.arrow_drop_up)),
                    Text(
                      numberWall.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    ElevatedButton(
                        onPressed: decrementNumber,
                        child: const Icon(Icons.arrow_drop_down)),
                  ]),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(children: [
                    CustomButton(
                      title: 'Next',
                      screenName: ManywallScreen(
                        numberWall: numberWall,
                      ),
                      icon: Image.asset(
                        'images/empty.png',
                        scale: 15,
                      ),
                    ),
                  ])
                ],
              ),
            )),
      ),
    );
  }
}

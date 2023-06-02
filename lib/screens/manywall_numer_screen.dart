import 'package:dice_pro/const.dart';
import 'package:dice_pro/screens/manywall_screen.dart';
import 'package:flutter/material.dart';
import 'package:dice_pro/styles/custon_button.dart';

class ManywallNumerScreen extends StatefulWidget {
  const ManywallNumerScreen({super.key});

  @override
  State<ManywallNumerScreen> createState() => _ManywallNumerScreenState();
}

class _ManywallNumerScreenState extends State<ManywallNumerScreen> {
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
                    const Text(
                      'Ile ścianek ma być na kostce?',
                      style: TextStyle(fontSize: 25, color: Colors.white),
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
                      title: 'Dalej',
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

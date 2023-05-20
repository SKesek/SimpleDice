import 'package:dice_pro/const.dart';
import 'package:flutter/material.dart';

class ManywallScreen extends StatefulWidget {
  const ManywallScreen({super.key});

  @override
  State<ManywallScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ManywallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kBackgroundColor(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/empty_dice.png'),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Roll',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

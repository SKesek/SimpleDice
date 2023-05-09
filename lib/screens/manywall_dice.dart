import 'package:dice_pro/const.dart';
import 'package:flutter/material.dart';

class ManywallDice extends StatelessWidget {
  const ManywallDice({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            decoration: kBackgroundColor(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Ile ścianek ma być na kostce?',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )
                ],
              ),
            )),
      ),
    );
  }
}

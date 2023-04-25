import 'package:flutter/material.dart';
import 'package:dice_pro/screens/normal_dice.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.blueAccent,
        ),
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const NormalDice()));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

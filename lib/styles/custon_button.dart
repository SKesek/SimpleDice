import 'package:flutter/material.dart';
import 'package:dice_pro/screens/normal_dice.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final Image icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          backgroundColor: Colors.blueAccent,
        ),
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const NormalDice()));
        },
        label: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
        icon: icon,
      ),
    );
  }
}

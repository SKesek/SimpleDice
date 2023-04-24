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
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const NormalDice()));
      },
      child: Text(title),
    );
  }
}

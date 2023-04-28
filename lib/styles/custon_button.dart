import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.icon,
    required this.screenName,
  });
  final String title;
  final Image icon;
  final Navigator screenName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          backgroundColor: Colors.blueAccent,
        ),
        onPressed: () {
          screenName;
        },
        label: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
        icon: icon,
      ),
    );
  }
}

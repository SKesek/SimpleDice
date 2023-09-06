import 'package:flutter/material.dart';

class RoleBlock extends StatelessWidget {
  const RoleBlock({
    super.key,
    required this.boldText,
    required this.normalText,
  });
  final String boldText;
  final String normalText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(Icons.keyboard_arrow_right_outlined),
          Flexible(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: boldText,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  TextSpan(
                      text: normalText,
                      style: const TextStyle(fontSize: 14, color: Colors.black))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

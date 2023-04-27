import 'package:flutter/material.dart';

BoxDecoration kBackgroundColor() {
  return const BoxDecoration(
    gradient: LinearGradient(colors: [
      Color.fromARGB(255, 6, 56, 97),
      Color.fromARGB(255, 12, 112, 220),
    ], begin: Alignment.bottomLeft, end: Alignment.topRight),
  );
}

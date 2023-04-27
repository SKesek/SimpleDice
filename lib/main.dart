import 'package:flutter/material.dart';
import 'screens/home_page_screen.dart';
import 'const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: kBackgroundColor(),
            child: const HomePage(),
          ),
        ),
      ),
    );
  }
}

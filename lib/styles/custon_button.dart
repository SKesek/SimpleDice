import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.icon,
    required this.title,
    required this.screenName,
  });
  final String title;
  final Image icon;
  final Widget screenName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton.icon(
        style: TextButton.styleFrom(
            backgroundColor: Colors.blueAccent, elevation: 8),
        label: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                style: GoogleFonts.lobster(
                  textStyle: const TextStyle(color: Colors.white, fontSize: 25),
                )),
          ],
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screenName));
        },
        icon: icon,
      ),
    );
  }
}

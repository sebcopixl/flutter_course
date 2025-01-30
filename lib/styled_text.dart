import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(
    this.text, {
    this.fontSize = 30, // Optional with default
    this.color =
        const Color.fromARGB(255, 248, 248, 255), // Optional with default
    this.fontFamily = 'Play', // Optional with default
    super.key,
  });

// Named constructor that allows customizing everything
  const StyledText.matcha(
    this.text, {
    super.key,
    this.fontSize = 30,
    this.color = const Color.fromARGB(255, 16, 23, 32),
    this.fontFamily = 'Play',
  });

  final String text;
  final double fontSize;
  final Color color;
  final String fontFamily;

  @override
  Widget build(context) {
    return Center(
      child: Text(
        text,
        style: GoogleFonts.getFont(
          fontFamily,
          color: color,
          fontSize: fontSize,
        ),
      ),
    );
  }
}

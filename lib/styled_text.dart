import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  static final textStyle = GoogleFonts.play(
    color: Colors.white,
    fontSize: 30,
  );

  @override
  Widget build(context) {
    return Center(
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}

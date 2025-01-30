import 'package:flutter/material.dart';
import 'package:flutter_application_1/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.colors, {
    super.key,
    this.startAlignment = Alignment.topCenter, // Optional with default
    this.endAlignment = Alignment.bottomCenter, // Optional with default
  });

  // Named constructor that allows customizing everything (just an example)
  GradientContainer.matcha({
    super.key,
    this.startAlignment = Alignment.topCenter,
    this.endAlignment = Alignment.bottomCenter,
  }) : colors = [
          Color.fromARGB(255, 31, 64, 55),
          Color.fromARGB(255, 153, 242, 200),
        ];

  final List<Color> colors;
  final Alignment startAlignment;
  final Alignment endAlignment;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: StyledText(
        'GEN-X SOFT CLUB',
        color: Color.fromARGB(255, 218, 223, 229), // Using primary constructor to customize color for text only
      ),
    );
  }
}

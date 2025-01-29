import 'package:flutter/material.dart';
import 'package:flutter_application_1/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradientColors, {super.key});
  final List<Color> gradientColors;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: gradientColors,
              begin: startAlignment,
              end: endAlignment),
        ),
        child: StyledText('GEN-X SOFT CLUB'));
  }
}

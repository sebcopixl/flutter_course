import 'package:flutter/material.dart';
import 'package:flutter_application_1/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.colors, {
    super.key,
    this.startAlignment = Alignment.topCenter, // Optional with default
    this.endAlignment = Alignment.bottomCenter, // Optional with default
  });

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
        child: StyledText('GEN-X SOFT CLUB'));
  }
}

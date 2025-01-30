import 'package:flutter/material.dart';

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

  void rollDice() {
    // Implement rolling dice logic here
  }

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors, begin: startAlignment, end: endAlignment),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 100,
            ),
            const SizedBox(height: 20),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20.0),
                    backgroundColor: Color.fromARGB(255, 230, 230, 250),
                    foregroundColor: Color.fromARGB(255, 16, 23, 32),
                    textStyle: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 230, 230, 250))),
                child: const Text(
                  'Roll Dice',
                )),
          ],
        )) // Using an image asset
        );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: GradientContainer())));
}

class GradientContainer extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 17, 16, 34), const Color(0xFF302B63)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: const Center(
        child: Text('Hello World!',
            style: TextStyle(color: Colors.white, fontSize: 30)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: GradientContainer(
              [Color.fromARGB(255, 17, 16, 34), Color(0xFF302B63)]))));
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0), // Height of the AppBar
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20), // Adjust the radius as needed
            ),
            child: AppBar(
              title: Text('Rounded AppBar'),
              backgroundColor: const Color.fromARGB(146, 121, 50, 235),
              elevation: 4, // Adjust shadow as needed
            ),
          ),
        ),
        body: Center(child: Text('Content here'))
      ),
  ));
}

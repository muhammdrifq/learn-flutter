import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Bomba padamkan api jeu?'),
        Text('Tugas bomba lebih dari pada itu'),
        Text('Bomba ni penyelamat'),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: Colors.amber[200],
          child: FlutterLogo(
            size: 48,
          ),
        ),
        Container(
          color: Colors.amber[500],
          child: FlutterLogo(
            size: 48,
          ),
        ),
        Container(
          color: Colors.amber[800],
          child: FlutterLogo(
            size: 48,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.amber[700],
              borderRadius: BorderRadius.circular(20)),
          width: 100,
          height: 100,
          child: FlutterLogo(
            size: 30,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.amber[700],
              borderRadius: BorderRadius.circular(20)),
          width: 100,
          height: 100,
          child: FlutterLogo(
            size: 50,
          ),
        ),
      ],
    );
  }
}

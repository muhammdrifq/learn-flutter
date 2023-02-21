import 'package:flutter/material.dart';

class HalloWidget extends StatelessWidget{
  const HalloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.amber[700],
        borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Hallo',
        style: TextStyle(
          fontSize: 26,
          color:Colors.white,
          fontWeight: FontWeight.bold
        ),)
      ],
    ),
    ) ;
  }
}
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[300],
      height: 200,
      width: 200,
      child: Center(
        child: Text('ini adalah container')
      ),
    );
  }
  
}
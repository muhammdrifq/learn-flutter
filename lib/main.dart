import 'package:flutter/material.dart';
import 'package:latihan_1/container_widget.dart';
import 'package:latihan_1/hallo_widget.dart';
import 'row_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Latihan Flutter",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Home"),
            backgroundColor: Colors.amber[400],
          ),
          body: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 15)),
              HalloWidget(),
              Padding(padding: EdgeInsets.only(top: 15)),
              RowWidget(),
              Padding(
                padding: EdgeInsets.only(top: 15),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
              ),
              ContainerWidget()
            ],
          )),
    );
  }
}

class HelloWidget extends StatelessWidget {
  const HelloWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Hello world",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

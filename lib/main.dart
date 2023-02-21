import 'package:flutter/material.dart';
import 'package:latihan_1/container_widget.dart';
import 'column.dart';
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
            title: const Text("Latihan"),
            backgroundColor: Colors.amber[400],
          ),
          body: Column(
            children: [
              RowWidget(),
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              ColumnWidget(),
              Padding(
                padding: EdgeInsets.only(top: 20),
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

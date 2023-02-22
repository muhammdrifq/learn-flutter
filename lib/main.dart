import 'package:flutter/material.dart';
import 'package:latihan_1/container_widget.dart';
import 'package:latihan_1/hallo_widget.dart';
import 'package:latihan_1/list_view/list_view.dart';
import 'package:latihan_1/list_view/list_view_restaurents.dart';
import 'row_widget.dart';
import 'package:latihan_1/list_view/list_view_builder.dart';
import 'package:latihan_1/list_view/list_view_latihan.dart';
import 'list_view/list_view_story.dart';
import 'list_view/list_view_dishes.dart';

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
          body: Container(
        height: 2080,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xff11091e), Color(0xff001b27)],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        )),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                child: ListViewStoryWidget(),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text(
                'Restaurents',
                style: TextStyle(
                  fontFamily:'FontFalkosta',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              SizedBox(
                height: 200,
                child: ListRestoWidget(),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text(
                'Dishes',
                style: TextStyle(
                  fontFamily: 'FontFalkosta',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              SizedBox(
                height: 200,
                child: ListDishesWidget(),
              )
            ],
          ),
        ),
      )),
    );
  }
}

class LatihanListView extends StatelessWidget {
  const LatihanListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: ListViewLatihan(),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xff8bc34a), Color(0xff009688)],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ))),
    );
  }
}

class TugasKemarin extends StatelessWidget {
  const TugasKemarin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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

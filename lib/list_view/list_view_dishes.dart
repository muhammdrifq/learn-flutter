import 'dart:ui';

import 'package:flutter/material.dart';

class ListDishesWidget extends StatelessWidget {
  ListDishesWidget({Key? key}) : super(key: key);

  final List resto = [
    'img/dishes/5f69e601777db.jpg',
    'img/dishes/2459094356.jpg',
    'img/dishes/a4b7d013-9438-46b2-906b-4c374ec82236.jpg',
    'img/dishes/download1.jpg',
    'img/dishes/images1.jpg',
    'img/dishes/Resep-Ayam-Geprek-Bensu-min.jpg',
  ];

  final List name = [
    'Dishes One',
    'Dishes Two',
    'Dishes Three',
    'Dishes Four',
    'Dishes Five',
    'Dishes Six'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 20,
                    offset: Offset(2, 10),
                    spreadRadius: 0.5,
                    blurStyle: BlurStyle.normal
                  )
                ],
              ),
              child: Card(

                margin: EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  Column(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                          padding: EdgeInsets.all(10),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Image.network(resto[index],
                                                      width: 150,
                                                      height: 100,
                                                      fit: BoxFit.cover),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(name[index]),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            )
          ],
        );
      },
      itemCount: resto.length,
    );
  }
}

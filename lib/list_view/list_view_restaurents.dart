import 'dart:ui';

import 'package:flutter/material.dart';

class ListRestoWidget extends StatelessWidget {
  ListRestoWidget({Key? key}) : super(key: key);

  final List resto = [
    'https://s3.amazonaws.com/appforest_uf/f1648328059903x548121509779099700/pt-creatura-kreasi-indonesia-burger-bangor-bogor1623120149-m.jpeg?fit=crop&q=75&fm=pjpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4RaiI62kqmrxADvQCzwHlrBXj7FmYoTKdag&usqp=CAU',
    'https://1.bp.blogspot.com/-ou44k14iy5M/XB2kk7-VpmI/AAAAAAAAdK4/Qu03fMNb8sg3063aAfMF1Gw8t1mPL4gPQCLcBGAs/s1600/ampera_1.jpg',
    'img/locavore.jpg',
    'img/Locavore-Bali-Artefacts-Interior-665x443.jpg',
    'img/001411700_1593427405-table-in-vintage-restaurant-6267.jpg'
  ];

  final List name = [
    'Restaurant One',
    'Restaurant Two',
    'Restaurant Three',
    'Restaurant Four',
    'Restaurant Five',
    'Restaurant Six'
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
                elevation: 10,
                shadowColor: Colors.black,
                margin: EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
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

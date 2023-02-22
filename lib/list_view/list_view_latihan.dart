import 'package:flutter/material.dart';

class ListViewLatihan extends StatelessWidget {
  ListViewLatihan({Key? key}) : super(key: key);
  final List photo = [
    'https://images.tokopedia.net/img/cache/250-square/VqbcmM/2022/11/8/647ca20e-76d1-4c6f-88bb-aa9ed33a5fb7.jpg',
    'https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/2/20/5fd41c91-deca-49a7-a4ae-db3288bab272.jpg',
    'https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/1/24/5763e123-d964-4f57-9734-29e4a6768fb3.jpg',
    'https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/2/18/ff0252cc-e091-48c4-b474-da2869df712a.jpg',
    'https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/12/29/34490b77-5cf0-444c-b81d-2ee762320575.png',
    'https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/11/24/79a74149-c376-4968-ae32-024c5f0dee33.jpg',
    'https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/2/18/9f71dc82-c94d-43f8-870a-4b058ddb170c.jpg',
    'https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/8/27/c628773d-6f99-41ed-a2a7-3d01acc16fbe.jpg',
  ];

  final List desc = [
    'Iphone 14 Pro 128GB 256GB 512GB Garansi Resmi iBox / Tam - Gold, 128 gb',
    'XIAOMI POCO M5s 6/128 MediaTek Helio G95 Dotdisplay AMOLED FHD+ NFC - GREY',
    'Apple MacBook Pro (13.3 inci, M2, 2022) 8C CPU, 10C GPU, 256GB - Silver',
    'Asus ROG Phone 6 12/256 Ram 12GB Rom 256GB Garansi Resmi - Phantom Black',
    'Aeroactive Cooler 6 For Asus ROG Phone 6 Series Original',
    'Samsung Galaxy Tab A8 LTE 2022 4/64RAM 4GB ROM 64GB GARANSI RESMI - GRAY',
    'SAMSUNG GALAXY A04S 4/64 RAM 4GB ROM 64GB GARANSI RESMI - FS PROMO',
    'Tecno Buds 2 True Wireless Real Portable - Hitam'
  ];

  final List name = [
    'Iphone 14 Pro Max',
    'Xiaomi Poco M5s',
    'Apple Macbook Pro',
    'Asus ROG Phone ',
    'Aerocreative Cooler 6',
    'Samsung Galaxy Tab A8',
    'Samsung Galaxy A04s',
    'Tecno Buds 2',
  ];

  final List price = [
    'Rp18.649.000',
    'Rp2.599.000',
    'Rp19.175.000',
    'Rp13.025.000',
    'Rp885.000',
    'Rp3.749.000',
    'Rp155.000',
    'Rp155.000'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(18.0),
      itemBuilder: (context, index) {
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.all(10),
          elevation: 16,
          shadowColor: Colors.black,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  width: 100,
                  height: 100,
                  child: Image.network(photo[index]),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        name[index],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(desc[index]),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        price[index],
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: photo.length, //pembatas view
    );
  }
}

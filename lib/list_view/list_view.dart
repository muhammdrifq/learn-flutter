import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        Container(
          padding: EdgeInsets.all(15),
          child: Text('Flutter Widget: Penggunaan ListView Class',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Text('Cupcake ipsum dolor sit amet fruitcake danish. Jujubes bonbon soufflé chocolate bar wafer cake chocolate cake. Soufflé macaroon gummies brownie biscuit. Gummi bears halvah donut jelly-o sesame snaps. Chocolate cake jelly beans danish dessert cotton candy jelly-o cheesecake candy canes bonbon. Dragée jelly-o marzipan sugar plum oat cake pastry. Jelly-o croissant sweet roll tootsie roll halvah. Icing chocolate bar chupa chups marzipan candy canes bear claw donut cotton candy. Donut tootsie roll bonbon chocolate bar dragée. Pastry shortbread tootsie roll gummies pie ice cream dessert caramels.',
          style: TextStyle(
            fontSize: 16,
          ),),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Text('Sweet roll jujubes brownie chocolate biscuit bonbon ice cream sesame snaps. Chocolate bar cake jelly-o oat cake sesame snaps. Oat cake halvah donut powder tootsie roll. Pie jelly sugar plum bonbon croissant liquorice wafer dessert cookie. Liquorice bear claw macaroon lollipop dragée sweet. Jelly-o cookie cupcake marshmallow topping shortbread macaroon brownie.',
          style: TextStyle(
            fontSize: 12
          ),),
          
        )

      ],
    );
  }
}
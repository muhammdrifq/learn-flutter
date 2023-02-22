import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListViewStoryWidget extends StatelessWidget {
  ListViewStoryWidget({Key? key}) : super(key: key);

  final List profile = [
    'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=600',
    'img/portrait-handsome-young-man-with-dark-hair-smiles-happily-expresses-positive-emotions-dressed-casual-turtleneck-hears-good-nes-isolated-brown-background-glad-meet-old-best-friend.jpg',
    'img/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer.jpg',
    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://newprofilepic2.photo-cdn.net//assets/images/article/profile.jpg',
    'https://media.licdn.com/dms/image/D4D08AQE0CXu4hnoe7g/croft-frontend-shrinkToFit1024/0/1646754728586?e=2147483647&v=beta&t=ADkOVwOwmP-4rCH4y0g2_OBFlsszl01TpQPhCgt5SSc'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(3),
      itemBuilder: (context, index) {
        return Container(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                    child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.pink[900],
                      backgroundImage: NetworkImage(profile[index]),
                      radius: 50,
                    )
                  ],
                )),
              )
            ],
          ),
        );
      },
      itemCount: profile.length,
    );
  }
}

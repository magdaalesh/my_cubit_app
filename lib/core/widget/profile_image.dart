import 'package:flutter/material.dart';

import '../const/color.dart';

class ProfileImage extends StatelessWidget {
  ProfileImage({super.key , required this.imageurl});
  String imageurl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: mycolorapp, width: 2),
            image: DecorationImage(
              image: NetworkImage(imageurl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 10,
          child: Container(
            decoration: BoxDecoration(
              color: mycolorapp,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 40,
            width: 40,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

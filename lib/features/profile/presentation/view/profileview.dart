import 'package:flutter/material.dart';
import 'package:my_cubit_app/core/const/color.dart';
import 'package:my_cubit_app/core/const/sized.dart';
import 'package:my_cubit_app/core/widget/appbar.dart';

import 'widget/profilecard.dart';

class Profileview extends StatelessWidget {
  const Profileview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Appbarcustom(icon: Icons.person_2_outlined, title: "Profile"),
        Stack(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: mycolorapp, width: 2),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i.pinimg.com/736x/94/a1/e5/94a1e5dc5e3dee88ede47e81ecaafd2f.jpg",
                  ),
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
        ),
        SizedBox(height: Sizescreen().fullheight(context) / 40),
        Profilecard(icon: Icons.person, title: "Name", subtitle: "My Name"),

        Profilecard(
          icon: Icons.email,
          title: "Email",
          subtitle: "Email@gmail.com",
        ),

        Profilecard(icon: Icons.phone, title: "Phone", subtitle: "09********"),
        Profilecard(
          icon: Icons.location_on,
          title: "Adress",
          subtitle: "Damasus-Mazeh",
        ),
      ],
    );
  }
}

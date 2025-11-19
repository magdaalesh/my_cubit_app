import 'package:flutter/material.dart';
import '/core/const/color.dart';
import '/core/const/sized.dart';
import '/core/widget/appbar.dart';
import '/core/widget/profile_image.dart';

import 'widget/profilecard.dart';

class Profileview extends StatelessWidget {
  const Profileview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Appbarcustom(icon: Icons.person_2_outlined, title: "Profile"),
        ProfileImage(
          imageurl:
              "https://i.pinimg.com/736x/94/a1/e5/94a1e5dc5e3dee88ede47e81ecaafd2f.jpg",
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

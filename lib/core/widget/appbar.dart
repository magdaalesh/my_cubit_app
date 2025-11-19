import 'package:flutter/material.dart';

import '/core/const/sized.dart';
import '/core/style/textstyle.dart';

class Appbarcustom extends StatelessWidget {
  Appbarcustom({super.key, required this.icon, required this.title});
  String title;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizescreen().fullheight(context) * 0.2,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsetsGeometry.only(
          left: Sizescreen().fullwidth(context) / 25,
        ),
        child: Row(
          children: [
            Icon(icon, size: 30),
            SizedBox(width: Sizescreen().widthsittingpaddingcard(context)),
            Text(title, style: TextstyleApp().appbar),
          ],
        ),
      ),
    );
  }
}

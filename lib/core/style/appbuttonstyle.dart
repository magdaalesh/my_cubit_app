import 'package:flutter/material.dart';
import '/core/const/color.dart';

import '../const/sized.dart';

class Appbuttonstyle {
  ButtonStyle authbutton(BuildContext context) {
    return ElevatedButton.styleFrom(
      backgroundColor: mycolorapp,
      fixedSize: Size(
        Sizescreen().fullwidth(context) / 1.8,
        Sizescreen().fullheight(context) / 15,
      ),
    );
  }

  ButtonStyle authtextbuttonstyle = TextButton.styleFrom(
    padding: EdgeInsets.zero,
    backgroundColor: Colors.transparent,
    elevation: 0,
    shadowColor: Colors.transparent,
    minimumSize: Size.zero,
  );
}

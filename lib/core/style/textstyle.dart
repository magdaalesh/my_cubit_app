import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../const/color.dart';

class TextstyleApp {
  final TextStyle titleauth = TextStyle(
    fontSize: 40,
    color: mycolorapp,
    fontWeight: FontWeight.bold,
  );
  TextStyle authsubtitle = TextStyle(
    color: mycolorapp,
    decoration: TextDecoration.underline,
    decorationColor: mycolorapp,
  );
  TextStyle buttontexttitle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 28,
  );
  TextStyle subtitle = TextStyle(fontWeight: FontWeight.w700);
  TextStyle sictiontitle = TextStyle(
    color: mycolorapp,
    fontSize: 20,
    fontWeight: FontWeight.w800,
  );
  TextStyle appbar = TextStyle(fontSize: 23, fontWeight: FontWeight.w700);
}

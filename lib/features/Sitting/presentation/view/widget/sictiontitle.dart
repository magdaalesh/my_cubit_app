import 'package:flutter/material.dart';
import '/core/const/color.dart';
import '/core/const/sized.dart';
import '/core/style/textstyle.dart';

class Sictiontitle extends StatelessWidget {
  Sictiontitle({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Sizescreen().higthsittingpaddingcard(context),
        horizontal: Sizescreen().fullwidth(context) / 20,
      ),
      child: Text(title, style: TextstyleApp().sictiontitle),
    );
  }
}

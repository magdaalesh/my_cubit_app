import 'package:flutter/material.dart';
import '/core/const/color.dart';
import '/core/const/sized.dart';
import '/core/style/textstyle.dart';

class Sittingcard extends StatelessWidget {
  Sittingcard({
    super.key,
    required this.sittingicon,
    required this.sittingtype,
    this.ontap,
  });
  String sittingtype;
  VoidCallback? ontap;
  IconData sittingicon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: Sizescreen().higthsittingpaddingcard(context),
          horizontal: Sizescreen().widthsittingpaddingcard(context),
        ),
        child: Card(
          child: ListTile(
            title: Text(sittingtype, style: TextstyleApp().subtitle),
            leading: Icon(sittingicon),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_cubit_app/core/const/color.dart';
import 'package:my_cubit_app/core/const/sized.dart';
import 'package:my_cubit_app/core/style/textstyle.dart';

class Sittingcard extends StatelessWidget {
  Sittingcard({
    super.key,
    required this.sittingicon,
    required this.sittingtype,
  });
  String sittingtype;
  IconData sittingicon;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

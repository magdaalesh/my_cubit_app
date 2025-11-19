import 'package:flutter/material.dart';
import '/core/const/sized.dart';
import '/core/style/textstyle.dart';

class Profilecard extends StatelessWidget {
  Profilecard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });
  String title, subtitle;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Sizescreen().higthsittingpaddingcard(context),
        horizontal: Sizescreen().widthsittingpaddingcard(context),
      ),
      child: Card(
        child: ListTile(
          title: Row(
            children: [
              Icon(icon),
              SizedBox(width: Sizescreen().widthsittingpaddingcard(context)),
              Text(title, style: TextstyleApp().subtitle),
            ],
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(
              top: Sizescreen().higthsittingpaddingcard(context),
            ),
            child: Text(subtitle),
          ),
        ),
      ),
    );
  }
}

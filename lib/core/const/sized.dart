import 'package:flutter/widgets.dart';

class Sizescreen {
  double fullwidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double fullheight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double widthtextfilesauth(BuildContext context) {
    return fullwidth(context) / 15;
  }

  double higthbetweenelementauth(BuildContext context) {
    return fullheight(context) / 55;
  }
}

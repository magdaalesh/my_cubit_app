import 'package:flutter/material.dart';
import '/core/style/borderstyle.dart';

import '../const/sized.dart';

class Textfilecustom extends StatelessWidget {
  Textfilecustom({
    super.key,
    this.controller,
    this.paddingwidth,
    this.preicon,
    required this.title,
    this.suficonneed,
    this.suficon,
    this.onpress,
    this.visibil,
    required this.onchange,
    this.customborder,
  });
  TextEditingController? controller;
  IconData? preicon, suficon;
  String title;
  bool? suficonneed = false, visibil = true;
  double? paddingwidth;
  VoidCallback? onpress;
  ValueChanged onchange;
  InputBorder? customborder;

  @override
  Widget build(BuildContext context) {
    final padding = paddingwidth ?? Sizescreen().widthtextfilesauth(context);
    final border = customborder ?? AppBorderstyle().authstyleborder;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: TextFormField(
        obscureText: (visibil == true) ?? false,
        controller: controller,
        onChanged: onchange,
        decoration: InputDecoration(
          hintText: title,
          prefixIcon: preicon != null ? Icon(preicon) : null,
          suffixIcon: suficonneed == true
              ? IconButton(icon: Icon(suficon), onPressed: onpress)
              : SizedBox(),
          border: border,
        ),
      ),
    );
  }
}

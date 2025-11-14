import 'package:flutter/material.dart';

import '../const/sized.dart';

class Textfilecustom extends StatelessWidget {
  Textfilecustom({
    super.key,
    this.controller,
    this.paddingwidth,
    required this.preicon,
    required this.title,
    this.suficonneed,
    this.suficon,
    this.onpress,
    this.visibil,
    required this.onchange,
  });
  TextEditingController? controller;
  IconData? preicon, suficon;
  String title;
  bool? suficonneed = false, visibil = true;
  double? paddingwidth;
  VoidCallback? onpress;
  ValueChanged onchange;

  @override
  Widget build(BuildContext context) {
    final padding = paddingwidth ?? Sizescreen().widthtextfilesauth(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: TextFormField(
        obscureText: (visibil == true) ?? false,
        controller: controller,
        onChanged: onchange,
        decoration: InputDecoration(
          hintText: title,
          prefixIcon: Icon(preicon),
          suffixIcon: suficonneed == true
              ? IconButton(icon: Icon(suficon), onPressed: onpress)
              : SizedBox(),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}

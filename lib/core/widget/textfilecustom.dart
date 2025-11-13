import 'package:flutter/material.dart';

class Textfilecustom extends StatelessWidget {
  Textfilecustom({
    super.key,
    this.controller,
    required this.paddingwidth,
    required this.preicon,
    required this.title,
    this.suficonneed,
    this.suficon,
  });
  TextEditingController? controller;
  double paddingwidth;
  IconData? preicon, suficon;
  String title;
  bool? suficonneed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingwidth),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: title,
          prefixIcon: Icon(preicon),
          suffixIcon: suficonneed == true ? Icon(suficon) : SizedBox(),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}

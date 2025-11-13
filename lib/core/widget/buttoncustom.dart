import 'package:flutter/material.dart';

class Buttoncustom extends StatelessWidget {
  Buttoncustom({
    super.key,
    required this.onpress,
    required this.title,
    required this.styletitlebutton,
    required this.buttonstyle
  });
  VoidCallback onpress;
  String title;
  TextStyle styletitlebutton;
  ButtonStyle buttonstyle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpress,
      style: buttonstyle,
      child: Text(title, style: styletitlebutton),
    );
  }
}

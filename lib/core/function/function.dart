import 'package:flutter/material.dart';
import '/core/const/color.dart';

void showcustomdialoge(var context, String title, var body, var onpress) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title, textAlign: TextAlign.center),
      content: body,
      actions: [
        TextButton(
          child: Text(
            "OK",
            style: TextStyle(color: mycolorapp, fontWeight: FontWeight.bold),
          ),
          onPressed: onpress,
        ),
      ],
    ),
  );
}

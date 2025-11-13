import 'package:flutter/material.dart';
import 'package:my_cubit_app/core/style/appbuttonstyle.dart';
import 'package:my_cubit_app/core/style/textstyle.dart';
import 'package:my_cubit_app/core/widget/buttoncustom.dart';

import '../../../../core/const/sized.dart';
import '../../../../core/widget/textfilecustom.dart';

class ResetpasswordView extends StatelessWidget {
  const ResetpasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.only(top: Sizescreen().fullheight(context) / 3),
        child: Column(
          children: [
            Text("Reset password", style: TextstyleApp().titleauth),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Text("Enter your new password to secure your account"),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Textfilecustom(
              paddingwidth: Sizescreen().widthtextfilesauth(context),
              preicon: Icons.lock,
              title: "password",
              suficonneed: true,
              suficon: Icons.visibility,
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Textfilecustom(
              paddingwidth: Sizescreen().widthtextfilesauth(context),
              preicon: Icons.lock,
              title: "password config",
              suficonneed: true,
              suficon: Icons.visibility,
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Buttoncustom(
              onpress: () {},
              title: "Reset",
              styletitlebutton: TextstyleApp().buttontexttitle,
              buttonstyle: Appbuttonstyle().authbutton(context),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_cubit_app/core/const/sized.dart';
import 'package:my_cubit_app/core/style/appbuttonstyle.dart';
import 'package:my_cubit_app/core/style/textstyle.dart';
import 'package:my_cubit_app/core/widget/buttoncustom.dart';
import 'package:my_cubit_app/core/widget/textfilecustom.dart';

class Signupview extends StatelessWidget {
  const Signupview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.only(top: Sizescreen().fullheight(context) / 5),
        child: Column(
          children: [
            Text("Signup", style: TextstyleApp().titleauth),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Textfilecustom(
              paddingwidth: Sizescreen().widthtextfilesauth(context),
              preicon: Icons.person,
              title: "Full Name",
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Textfilecustom(
              paddingwidth: Sizescreen().widthtextfilesauth(context),
              preicon: Icons.location_on,
              title: "Address",
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Textfilecustom(
              paddingwidth: Sizescreen().widthtextfilesauth(context),
              preicon: Icons.email,
              title: "emal",
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("you already have an account then"),
                Buttoncustom(
                  onpress: () {},
                  title: "Login",
                  styletitlebutton: TextstyleApp().authsubtitle,
                  buttonstyle: Appbuttonstyle().authtextbuttonstyle,
                ),
              ],
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Buttoncustom(
              onpress: () {},
              title: "Signup",
              styletitlebutton: TextstyleApp().buttontexttitle,
              buttonstyle: Appbuttonstyle().authbutton(context),
            ),
          ],
        ),
      ),
    );
  }
}

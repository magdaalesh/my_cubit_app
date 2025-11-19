import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/core/const/color.dart';
import '/core/style/appbuttonstyle.dart';
import '/core/style/textstyle.dart';
import '/core/widget/buttoncustom.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/const/sized.dart';

// ignore: must_be_immutable
class Verficationcodeview extends StatelessWidget {
  Verficationcodeview({super.key, required this.source});
  String source;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.only(top: Sizescreen().fullheight(context) / 3.5),
        child: Column(
          children: [
            Text(
              "verfication code",
              style: TextstyleApp().titleauth,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Text("Enter the 5-digit code sent to your email"),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Sizescreen().fullwidth(context) / 20,
              ),
              child: PinCodeTextField(
                appContext: context,
                length: 5,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                onChanged: (value) {},
                pinTheme: PinTheme(
                  fieldWidth: Sizescreen().fullwidth(context) / 6.7,
                  fieldHeight: Sizescreen().fullheight(context) / 12.7,
                  activeColor: mycolorapp,
                  selectedColor: mycolorapp,
                  disabledColor: mycolorapp,
                  inactiveColor: mycolorapp,

                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(15),
                ),

                // enableActiveFill: true,
              ),
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),

            Buttoncustom(
              onpress: () {
                if (source == 'forgetpassword') {
                  context.goNamed('resetpasssword');
                } else {
                  context.goNamed("home");
                }
              },
              title: "Verfiy",
              styletitlebutton: TextstyleApp().buttontexttitle,
              buttonstyle: Appbuttonstyle().authbutton(context),
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Buttoncustom(
              title: "resend code",
              buttonstyle: Appbuttonstyle().authtextbuttonstyle,
              styletitlebutton: TextstyleApp().authsubtitle,
              onpress: () {},
            ),
          ],
        ),
      ),
    );
  }
}

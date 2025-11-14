import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_cubit_app/core/style/appbuttonstyle.dart';
import 'package:my_cubit_app/core/style/textstyle.dart';
import 'package:my_cubit_app/core/widget/buttoncustom.dart';
import 'package:my_cubit_app/core/widget/textfilecustom.dart';

import '../../../../core/const/sized.dart';

class ForgotpasswordView extends StatelessWidget {
  const ForgotpasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.only(top: Sizescreen().fullheight(context) / 3),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Sizescreen().fullheight(context) * 0.002,
              ),
              child: Text(
                "Forgot password!",
                style: TextstyleApp().titleauth,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Text("Enter your email to reset your password"),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Textfilecustom(
              preicon: Icons.email,
              title: "Email",
              onchange: (value) {},
              controller: email,
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Buttoncustom(
              onpress: () {
                context.goNamed('varifycode',extra: 'forgetpassword');
              },
              title: "Verify",
              styletitlebutton: TextstyleApp().buttontexttitle,
              buttonstyle: Appbuttonstyle().authbutton(context),
            ),
          ],
        ),
      ),
    );
  }
}

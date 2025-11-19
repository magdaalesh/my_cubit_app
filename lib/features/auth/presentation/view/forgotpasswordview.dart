import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/core/style/appbuttonstyle.dart';
import '/core/style/textstyle.dart';
import '/core/widget/buttoncustom.dart';
import '/core/widget/textfilecustom.dart';

import '../../../../core/const/sized.dart';

class ForgotpasswordView extends StatefulWidget {
  const ForgotpasswordView({super.key});

  @override
  State<ForgotpasswordView> createState() => _ForgotpasswordViewState();
}

class _ForgotpasswordViewState extends State<ForgotpasswordView> {
  TextEditingController email = TextEditingController();
  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                context.goNamed('varifycode', extra: 'forgetpassword');
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

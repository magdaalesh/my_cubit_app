import 'package:flutter/material.dart';
import 'package:my_cubit_app/core/const/sized.dart';
import 'package:my_cubit_app/core/style/appbuttonstyle.dart';
import 'package:my_cubit_app/core/style/textstyle.dart';
import 'package:my_cubit_app/core/widget/buttoncustom.dart';

import '../../../../core/widget/textfilecustom.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: GlobalKey<State>(),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: Sizescreen().fullheight(context) / 5),
          reverse: true,
          child: Column(
            children: [
              Text(
                "Login",
                style: TextstyleApp().titleauth,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
              Textfilecustom(
                title: "Email",
                paddingwidth: Sizescreen().widthtextfilesauth(context),
                preicon: Icons.email,
              ),
              SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
              Textfilecustom(
                title: "password",
                preicon: Icons.lock,
                suficonneed: true,
                suficon: Icons.visibility,
                paddingwidth: Sizescreen().widthtextfilesauth(context),
              ),
              SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("you dont have an account then "),
                  Buttoncustom(
                    onpress: () {},
                    title: "signup",
                    buttonstyle: Appbuttonstyle().authtextbuttonstyle,
                    styletitlebutton: TextstyleApp().authsubtitle,
                  ),
                ],
              ),

              SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
              Buttoncustom(
                onpress: () {},
                title: "Login",
                buttonstyle: Appbuttonstyle().authbutton(context),
                styletitlebutton: TextstyleApp().buttontexttitle,
              ),
              Buttoncustom(
                onpress: () {},
                title: "Forget paassword?",
                styletitlebutton: TextstyleApp().authsubtitle,
                buttonstyle: Appbuttonstyle().authtextbuttonstyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

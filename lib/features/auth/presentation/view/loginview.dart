import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '/core/const/sized.dart';
import '/core/style/appbuttonstyle.dart';
import '/core/style/textstyle.dart';
import '/core/widget/buttoncustom.dart';

import '../../../../core/widget/textfilecustom.dart';

class Loginview extends StatefulWidget {
  Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  final _key = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();

  TextEditingController pass = TextEditingController();
  bool isvisible = true;
  @override
  void dispose() {
    email.dispose();
    pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: Sizescreen().fullheight(context) * 0.25,
          ),
          child: Form(
            key: _key,
            child: Column(
              children: [
                Text(
                  "Login",
                  style: TextstyleApp().titleauth,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
                Textfilecustom(
                  onchange: (value) {},
                  title: "Email",
                  preicon: Icons.email,
                  controller: email,
                ),
                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),

                Textfilecustom(
                  onchange: (value) {},
                  title: "Password",
                  preicon: Icons.lock,
                  controller: pass,

                  suficonneed: true,
                  suficon: isvisible != true
                      ? Icons.visibility
                      : Icons.visibility_off,

                  onpress: () {
                    setState(() {
                      isvisible = !isvisible;
                    });
                  },
                  visibil: isvisible,
                ),

                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    Buttoncustom(
                      onpress: () => context.goNamed('signup'),
                      title: "Signup",
                      buttonstyle: Appbuttonstyle().authtextbuttonstyle,
                      styletitlebutton: TextstyleApp().authsubtitle,
                    ),
                  ],
                ),
                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),

                Buttoncustom(
                  onpress: () {
                    context.goNamed("home");
                  },
                  title: "Login",
                  buttonstyle: Appbuttonstyle().authbutton(context),
                  styletitlebutton: TextstyleApp().buttontexttitle,
                ),

                Buttoncustom(
                  onpress: () => context.pushNamed('forgetpassword'),
                  title: "Forget password?",
                  styletitlebutton: TextstyleApp().authsubtitle,
                  buttonstyle: Appbuttonstyle().authtextbuttonstyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

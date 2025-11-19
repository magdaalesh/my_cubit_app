import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '/core/const/sized.dart';
import '/core/style/appbuttonstyle.dart';
import '/core/style/textstyle.dart';
import '/core/widget/buttoncustom.dart';
import '/core/widget/textfilecustom.dart';

class Signupview extends StatefulWidget {
  Signupview({super.key});

  @override
  State<Signupview> createState() => _SignupviewState();
}

class _SignupviewState extends State<Signupview> {
  TextEditingController email = TextEditingController();

  TextEditingController pass = TextEditingController();

  TextEditingController config = TextEditingController();

  TextEditingController name = TextEditingController();

  TextEditingController address = TextEditingController();
  bool passvisible = true , configvisible = true ;
  @override
  void dispose() {
    email.dispose();
    pass.dispose();
    name.dispose();
    config.dispose();
    address.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.only(top: Sizescreen().fullheight(context) / 6.5),
        child: Column(
          children: [
            Text("Signup", style: TextstyleApp().titleauth),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Textfilecustom(
              onchange: (value) {},
              preicon: Icons.person,
              title: "Full Name",
              controller: name,
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Textfilecustom(
              onchange: (value) {},
              preicon: Icons.location_on,
              title: "Address",
              controller: address,
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),

            Textfilecustom(
              onchange: (value) {},
              preicon: Icons.email,
              title: "emal",
              controller: email,
            ),

            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
             Textfilecustom(
                  onchange: (value) {},
                  controller: pass,
                  preicon: Icons.lock,
                  title: "password",

                  suficonneed: true,
                  suficon: passvisible != true
                      ? Icons.visibility
                      : Icons.visibility_off
,
                 
                  onpress: () {
                    setState(() {
                      passvisible = ! passvisible;
                    });
                  },
                  visibil: passvisible,
               
           
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Textfilecustom(
                  onchange: (value) {},
                  preicon: Icons.lock,
                  title: "password config",
                  suficonneed: true,
                  controller: config,
                  suficon: configvisible != true
                      ? Icons.visibility
                      : Icons.visibility_off,

                  onpress: () {
                   setState(() {
                     configvisible = ! configvisible;
                   });
                  },
                  visibil: configvisible,
            ),
            
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("you already have an account then"),
                Buttoncustom(
                  onpress: () {
                    context.goNamed('login');
                  },
                  title: "Login",
                  styletitlebutton: TextstyleApp().authsubtitle,
                  buttonstyle: Appbuttonstyle().authtextbuttonstyle,
                ),
              ],
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Buttoncustom(
              onpress: () {
                context.goNamed('varifycode', extra: 'signup');
              },
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

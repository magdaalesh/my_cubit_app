import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/widget/textfilecustom.dart';
import '/core/style/appbuttonstyle.dart';
import '/core/style/textstyle.dart';
import '/core/widget/buttoncustom.dart';
import '../../../../core/const/sized.dart';

class ResetpasswordView extends StatefulWidget {
  ResetpasswordView({super.key});

  @override
  State<ResetpasswordView> createState() => _ResetpasswordViewState();
}

class _ResetpasswordViewState extends State<ResetpasswordView> {
  TextEditingController pass = TextEditingController();

  TextEditingController config = TextEditingController();
  bool passvisible = true, configvisible = true;
  @override
  void dispose() {
    pass.dispose();
    config.dispose();
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
            Text("Reset password", style: TextstyleApp().titleauth),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Text("Enter your new password to secure your account"),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Textfilecustom(
              onchange: (value) {},
              preicon: Icons.lock,
              title: "password",
              suficonneed: true,
              suficon: passvisible != true
                  ? Icons.visibility
                  : Icons.visibility_off,
              controller: pass,
              onpress: () {
                setState(() {
                  passvisible = !passvisible;
                });
              },
              visibil: passvisible,
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Textfilecustom(
              preicon: Icons.lock,
              title: "password config",
              suficonneed: true,
              onchange: (value) {},
              suficon: configvisible != true
                  ? Icons.visibility
                  : Icons.visibility_off,
              controller: config,
              onpress: () {
                setState(() {
                  configvisible = !configvisible;
                });
              },
              visibil: configvisible,
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            Buttoncustom(
              onpress: () {
                context.goNamed("login");
              },
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

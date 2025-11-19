import 'package:flutter/material.dart';
import 'package:my_cubit_app/core/const/color.dart';
import 'package:my_cubit_app/core/const/sized.dart';
import 'package:my_cubit_app/core/style/appbuttonstyle.dart';
import 'package:my_cubit_app/core/style/borderstyle.dart';
import 'package:my_cubit_app/core/widget/buttoncustom.dart';
import 'package:my_cubit_app/core/widget/textfilecustom.dart';
import '/core/style/textstyle.dart';
import '/core/widget/appbar.dart';

class Changepasswordview extends StatefulWidget {
  Changepasswordview({super.key});

  @override
  State<Changepasswordview> createState() => _ChangepasswordviewState();
}

class _ChangepasswordviewState extends State<Changepasswordview> {
  TextEditingController oldpass = TextEditingController();
  TextEditingController newpass = TextEditingController();
  TextEditingController newpassconfig = TextEditingController();
  @override
  void dispose() {
    oldpass.dispose();
    newpass.dispose();
    newpassconfig.dispose();
    super.dispose();
  }

  bool oldpassvisib = true, newpassvisib = true, newconfigpassvisib = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Appbarcustom(icon: Icons.lock_reset, title: " Change password"),
            SizedBox(height: Sizescreen().fullheight(context) / 20),

            Text(
              textAlign: TextAlign.center,

              "Please enter your current password and a new password. ",

              style: TextstyleApp().sictiontitle,
            ),

            SizedBox(height: Sizescreen().fullheight(context) / 20),
            Textfilecustom(
              title: "Old password",
              onchange: (value) {},
              preicon: Icons.lock,
              controller: oldpass,
              suficonneed: true,
              suficon: oldpassvisib != true
                  ? Icons.visibility
                  : Icons.visibility_off,
              onpress: () {
                setState(() {
                  oldpassvisib = !oldpassvisib;
                });
              },

              visibil: oldpassvisib,
              customborder: AppBorderstyle().Editstyleborder,
            ),
            SizedBox(height: Sizescreen().fullheight(context) / 20),
            Textfilecustom(
              title: "New password",
              onchange: (value) {},
              preicon: Icons.lock_person_rounded,
              controller: newpass,
              suficonneed: true,
              suficon: newpassvisib != true
                  ? Icons.visibility
                  : Icons.visibility_off,
              onpress: () {
                setState(() {
                  newpassvisib = !newpassvisib;
                });
              },
              visibil: newpassvisib,
              customborder: AppBorderstyle().Editstyleborder,
            ),
            SizedBox(height: Sizescreen().fullheight(context) / 20),
            Textfilecustom(
              title: "Config new password",
              onchange: (value) {},

              preicon: Icons.lock_person_rounded,
              controller: newpassconfig,
              suficonneed: true,
              suficon: newconfigpassvisib != true
                  ? Icons.visibility
                  : Icons.visibility_off,
              onpress: () {
                setState(() {
                  newconfigpassvisib = !newconfigpassvisib;
                });
              },
              visibil: newconfigpassvisib,
              customborder: AppBorderstyle().Editstyleborder,
            ),
            SizedBox(height: Sizescreen().fullheight(context) / 10),

            Buttoncustom(
              onpress: () {},
              title: "Change",
              styletitlebutton: TextstyleApp().buttontexttitle,
              buttonstyle: Appbuttonstyle().authbutton(context),
            ),
          ],
        ),
      ),
    );
  }
}

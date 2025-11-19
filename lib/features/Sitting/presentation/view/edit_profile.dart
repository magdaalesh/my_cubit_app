import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/core/const/color.dart';
import '/core/const/sized.dart';
import '/core/style/appbuttonstyle.dart';
import '/core/style/borderstyle.dart';
import '/core/style/textstyle.dart';
import '/core/widget/appbar.dart';
import '/core/widget/buttoncustom.dart';
import '/core/widget/profile_image.dart';
import '/core/widget/textfilecustom.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();
  @override
  void dispose() {
    name.dispose();
    address.dispose();
    phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Appbarcustom(icon: Icons.manage_accounts, title: " Edit Profile"),
              ProfileImage(
                imageurl:
                    "https://i.pinimg.com/736x/94/a1/e5/94a1e5dc5e3dee88ede47e81ecaafd2f.jpg",
              ),
              SizedBox(height: Sizescreen().fullheight(context) / 20),

              Textfilecustom(
                preicon: Icons.person,
                title: "name",
                onchange: (value) {},
                controller: name,
                customborder: AppBorderstyle().Editstyleborder,
              ),
              SizedBox(height: Sizescreen().fullheight(context) / 20),

              Textfilecustom(
                title: "Address",
                preicon: Icons.location_on,
                controller: address,
                onchange: (value) {},
                customborder: AppBorderstyle().Editstyleborder,
              ),
              SizedBox(height: Sizescreen().fullheight(context) / 20),
              Textfilecustom(
                title: "Phone",
                controller: phone,
                preicon: Icons.phone,
                onchange: (value) {},
                customborder: AppBorderstyle().Editstyleborder,
              ),
              SizedBox(height: Sizescreen().fullheight(context) / 10),
              Buttoncustom(
                onpress: () {
                  context.pop();
                },
                title: "Edit",
                styletitlebutton: TextstyleApp().buttontexttitle,
                buttonstyle: Appbuttonstyle().authbutton(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

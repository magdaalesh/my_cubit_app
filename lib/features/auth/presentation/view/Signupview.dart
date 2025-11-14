import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_cubit_app/core/const/sized.dart';
import 'package:my_cubit_app/core/style/appbuttonstyle.dart';
import 'package:my_cubit_app/core/style/textstyle.dart';
import 'package:my_cubit_app/core/widget/buttoncustom.dart';
import 'package:my_cubit_app/core/widget/textfilecustom.dart';
import 'package:my_cubit_app/features/auth/presentation/view/manager/password_cubit.dart';

class Signupview extends StatelessWidget {
  const Signupview({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    TextEditingController config = TextEditingController();
    TextEditingController name = TextEditingController();
    TextEditingController address = TextEditingController();
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
            BlocBuilder<PasswordCubit, Map<Passwordenum, bool>>(
              builder: (context, state) {
                return Textfilecustom(
                  onchange: (value) {},
                  controller: pass,
                  preicon: Icons.lock,
                  title: "password",

                  suficonneed: true,
                  suficon: context.read<PasswordCubit>().getIcon(
                    Passwordenum.signuppass,
                  ),
                  onpress: () {
                    context.read<PasswordCubit>().changeVisibility(
                      Passwordenum.signuppass,
                    );
                  },
                  visibil: BlocProvider.of<PasswordCubit>(
                    context,
                  ).getVisibility(Passwordenum.signuppass),
                );
              },
            ),
            SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
            BlocBuilder<PasswordCubit, Map<Passwordenum, bool>>(
              builder: (context, state) {
                return Textfilecustom(
                  onchange: (value) {},
                  preicon: Icons.lock,
                  title: "password config",
                  suficonneed: true,

                  suficon: context.read<PasswordCubit>().getIcon(
                    Passwordenum.configpass,
                  ),
                  onpress: () {
                    context.read<PasswordCubit>().changeVisibility(
                      Passwordenum.configpass,
                    );
                  },
                  visibil: BlocProvider.of<PasswordCubit>(
                    context,
                  ).getVisibility(Passwordenum.configpass),
                );
              },
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

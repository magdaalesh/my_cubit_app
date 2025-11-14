import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_cubit_app/core/const/sized.dart';
import 'package:my_cubit_app/core/style/appbuttonstyle.dart';
import 'package:my_cubit_app/core/style/textstyle.dart';
import 'package:my_cubit_app/core/widget/buttoncustom.dart';
import 'package:my_cubit_app/features/auth/presentation/view/manager/password_cubit.dart';

import '../../../../core/widget/textfilecustom.dart';

class Loginview extends StatelessWidget {
  Loginview({super.key});
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
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

                BlocBuilder<PasswordCubit, Map<Passwordenum, bool>>(
                  builder: (context, state) {
                    return Textfilecustom(
                      onchange: (value) {},
                      title: "Password",
                      preicon: Icons.lock,
                      controller: pass,

                      suficonneed: true,
                      suficon: context.read<PasswordCubit>().getIcon(
                        Passwordenum.loginpass,
                      ),
                      onpress: () {
                        context.read<PasswordCubit>().changeVisibility(
                          Passwordenum.loginpass,
                        );
                      },
                      visibil: BlocProvider.of<PasswordCubit>(
                        context,
                      ).getVisibility(Passwordenum.loginpass),
                    );
                  },
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
                  onpress: () {},
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_cubit_app/core/style/appbuttonstyle.dart';
import 'package:my_cubit_app/core/style/textstyle.dart';
import 'package:my_cubit_app/core/widget/buttoncustom.dart';
import 'package:my_cubit_app/features/auth/presentation/view/manager/password_cubit.dart';

import '../../../../core/const/sized.dart';
import '../../../../core/widget/textfilecustom.dart';

class ResetpasswordView extends StatefulWidget {
  ResetpasswordView({super.key});

  @override
  State<ResetpasswordView> createState() => _ResetpasswordViewState();
}

class _ResetpasswordViewState extends State<ResetpasswordView> {
  TextEditingController pass = TextEditingController();

  TextEditingController config = TextEditingController();
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
        child: BlocBuilder<PasswordCubit, Map<Passwordenum, bool>>(
          builder: (context, State) {
            return Column(
              children: [
                Text("Reset password", style: TextstyleApp().titleauth),
                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
                Text("Enter your new password to secure your account"),
                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
                Builder(
                  builder: (context) {
                    return Textfilecustom(
                      onchange: (value) {},
                      preicon: Icons.lock,
                      title: "password",
                      suficonneed: true,
                      suficon: BlocProvider.of<PasswordCubit>(
                        context,
                      ).getIcon(Passwordenum.resetpassword),
                      controller: pass,
                      onpress: () {
                        BlocProvider.of<PasswordCubit>(
                          context,
                        ).changeVisibility(Passwordenum.resetconfig);
                      },
                      visibil: BlocProvider.of<PasswordCubit>(
                        context,
                      ).getVisibility(Passwordenum.resetpassword),
                    );
                  },
                ),
                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
                Textfilecustom(
                  preicon: Icons.lock,
                  title: "password config",
                  suficonneed: true,
                  onchange: (value) {},
                  suficon: BlocProvider.of<PasswordCubit>(
                    context,
                  ).getIcon(Passwordenum.resetconfig),
                  controller: config,
                  onpress: () {
                    BlocProvider.of<PasswordCubit>(
                      context,
                    ).changeVisibility(Passwordenum.resetconfig);
                  },
                  visibil: BlocProvider.of<PasswordCubit>(
                    context,
                  ).getVisibility(Passwordenum.resetconfig),
                ),
                SizedBox(height: Sizescreen().higthbetweenelementauth(context)),
                Buttoncustom(
                  onpress: () {},
                  title: "Reset",
                  styletitlebutton: TextstyleApp().buttontexttitle,
                  buttonstyle: Appbuttonstyle().authbutton(context),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

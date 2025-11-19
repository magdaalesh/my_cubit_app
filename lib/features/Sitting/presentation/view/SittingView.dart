import 'package:flutter/material.dart';
import 'package:my_cubit_app/features/Sitting/presentation/view/widget/sictiontitle.dart';
import 'package:my_cubit_app/features/Sitting/presentation/view/widget/sittingcard.dart';

import '../../../../core/widget/appbar.dart';

class Sittingview extends StatelessWidget {
  const Sittingview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Appbarcustom(title: "Setting", icon: Icons.settings_outlined),
        Sictiontitle(title: "Account Sitting"),
        Sittingcard(sittingicon: Icons.edit, sittingtype: "Edit profile"),
        Sittingcard(
          sittingicon: Icons.password,
          sittingtype: "Change password",
        ),
        Sictiontitle(title: "Other Sitting"),
        Sittingcard(sittingicon: Icons.dark_mode, sittingtype: "Theme"),
        Sittingcard(sittingicon: Icons.delete, sittingtype: "Delete account"),
        Sittingcard(sittingicon: Icons.logout, sittingtype: "Sign out"),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/core/app_colors.dart';

class LoginAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LoginAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundComponent,
      title: const Text("ABCondominios"),
      automaticallyImplyLeading: false,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

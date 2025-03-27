import 'package:flutter/material.dart';
import 'package:myapp/core/app_colors.dart';

class CustomAppbarAdmin extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppbarAdmin({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundComponent,
      title: Text(title),
      automaticallyImplyLeading: false,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

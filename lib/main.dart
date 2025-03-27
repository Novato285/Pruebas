import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/admin_screens/homepage_admin.dart';
import 'package:myapp/core/app_colors.dart';
import 'package:myapp/firebase_options.dart';
import 'package:myapp/user_screens/login_screen.dart';
import 'package:myapp/admin_screens/login_adminscreen.dart';

void main() {
  runApp(const ABCondominios());
}

class ABCondominios extends StatelessWidget {
  const ABCondominios({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.background),
      home: const HomePageAdmin(),
    );
  }
}

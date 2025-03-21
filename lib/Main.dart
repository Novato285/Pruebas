import 'package:flutter/material.dart';
import 'package:myapp/core/app_colors.dart';
import 'package:myapp/screens/login_screen.dart';

void main() {
  runApp(const ABCondominios());
}

class ABCondominios extends StatelessWidget {
  const ABCondominios({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.background),
      home: const LoginScreen(),
    );
  }
}


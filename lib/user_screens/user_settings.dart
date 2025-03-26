import 'package:flutter/material.dart';
import 'package:myapp/core/app_colors.dart';

class UserSettings extends StatelessWidget{
  const UserSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundComponent,
        title: const Text("Settings"),
        centerTitle: true,
      ),
    );
  }
}

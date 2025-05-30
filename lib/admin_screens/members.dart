import 'package:flutter/material.dart';
import 'package:myapp/core/app_colors.dart';
import 'package:myapp/components/user_bottom_app_bar.dart';

class Members extends StatefulWidget{
  const Members({super.key});

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundComponent,
        title: const Text("Members Page"),
      ),
      bottomNavigationBar: const CustomLowAppBar(),
    );
  }
}
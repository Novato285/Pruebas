import 'package:flutter/material.dart';
import 'package:myapp/components/bottom_app_bar.dart';
import 'package:myapp/core/app_colors.dart';

class MiNuevaPantalla extends StatelessWidget {
  const MiNuevaPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundComponent,
        title: Text("Home Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
            },
          ),
        ],
      ),
      bottomNavigationBar: const CustomAppBar(),
    );
  }
}
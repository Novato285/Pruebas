import 'package:flutter/material.dart';
import 'package:myapp/core/app_colors.dart';

class CustomAppBar extends StatelessWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.backgroundComponent,
      child: Row (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
            }
                ),
        ]
      )
    );
  }
}
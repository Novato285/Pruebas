import 'package:flutter/material.dart';
import 'package:myapp/components/bottom_app_bar.dart';
import 'package:myapp/core/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundComponent,
        title: const Text("Home Page"),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
//              Navigator.push(context, MaterialPageRoute(builder: (context) => const "Notificaciones")))

              // Aquí puedes agregar funcionalidad para notificaciones
            },
          ),
        ],
      ),
      bottomNavigationBar: const CustomAppBar(),
    );
  }
}
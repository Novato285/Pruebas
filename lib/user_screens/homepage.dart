import 'package:flutter/material.dart';
import 'package:myapp/components/bottom_app_bar.dart';
import 'package:myapp/core/app_colors.dart';

class MiNuevaPantalla extends StatefulWidget {
  const MiNuevaPantalla({super.key});

  @override
  State<MiNuevaPantalla> createState() => _MiNuevaPantallaState();
}

class _MiNuevaPantallaState extends State<MiNuevaPantalla> {
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
              // Aquí puedes agregar funcionalidad para notificaciones
            },
          ),
        ],
      ),
      bottomNavigationBar: const CustomAppBar(),
    );
  }
}

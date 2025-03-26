import 'package:flutter/material.dart';
import 'package:myapp/components/user_bottom_app_bar.dart';
import 'package:myapp/components/upper_appbar.dart';
import 'package:myapp/user_screens/notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "Home Page",
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationsPage(),
                ),
              );

              // Aquí puedes agregar funcionalidad para notificaciones
            },
          ),
        ],
      ),
      bottomNavigationBar: const CustomLowAppBar(),
    );
  }
}
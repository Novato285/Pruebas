import 'package:flutter/material.dart';
import 'package:myapp/components/textfields_login.dart';
import 'package:myapp/core/app_colors.dart';
import 'package:myapp/admin_screens/register_adminscreen.dart';

class LoginAdminScreen extends StatefulWidget {
  const LoginAdminScreen({super.key});

  @override
  State<LoginAdminScreen> createState() => _LoginAdminScreenState();
}

class _LoginAdminScreenState extends State<LoginAdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundComponent,
        title: Text('ABCondominios'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Hola, Administrador!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const TextfieldsLogin(),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterAdminScreen(),
                  ),
                );
              },
              child: Text(
                'Aun no tienes cuenta?',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
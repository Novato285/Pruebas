import 'package:flutter/material.dart';
import 'package:myapp/components/textfields_register.dart';
import 'package:myapp/core/app_colors.dart';
import 'package:myapp/admin_screens/login_adminscreen.dart';

class RegisterAdminScreen extends StatefulWidget {
  const RegisterAdminScreen({super.key});

  @override
  State<RegisterAdminScreen> createState() => _RegisterAdminScreenState();
}

class _RegisterAdminScreenState extends State<RegisterAdminScreen> {
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
              'Hola, administrador!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Flexible(child: const TextfieldsRegister()),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginAdminScreen(),
                    ),
                  );
                },
                child: Text(
                  'Ya tienes cuenta?',
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

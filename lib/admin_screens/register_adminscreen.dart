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
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundComponent,
        title: Text('ABCondominios'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hola, administrador!',
              style: TextStyle(fontSize: screenWidth * 0.06, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: screenHeight * 0.02),
            Flexible(
            child: const TextfieldsRegister()
            ),
            SizedBox(height: screenHeight * 0.03),
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
                    fontSize: screenWidth * 0.04,
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
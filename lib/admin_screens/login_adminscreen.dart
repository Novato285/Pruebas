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
              'Hola, Administrador!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            SizedBox(height: screenHeight * 0.3,
            child: const TextfieldsLogin()
            ),
            SizedBox(height: screenHeight * 0.03),
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
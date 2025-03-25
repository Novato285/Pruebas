import 'package:flutter/material.dart';
import 'package:myapp/components/textfields_register.dart';
import 'package:myapp/core/app_colors.dart';
import 'package:myapp/user_screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundComponent,
        title: Text('ABCondominios'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(child: const TextfieldsRegister()),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: Text(
                'Ya tienes cuenta?',
                style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

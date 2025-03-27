import 'package:flutter/material.dart';
import 'package:myapp/components/loginappbar.dart';
import 'package:myapp/components/textfields_login.dart';
import 'package:myapp/user_screens/homepage.dart';
import 'package:myapp/user_screens/register_screen.dart';
import 'package:myapp/components/user_submit_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextfieldsLoginState _textfieldsLoginState = TextfieldsLoginState();
  void _handleSubmit() {
    _textfieldsLoginState.ValidateFields();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LoginAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Flexible(child: TextfieldsLogin()),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SubmitButton(
              onSubmit: _handleSubmit,
              nextPage: const HomePage(),
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
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
    );
  }
}

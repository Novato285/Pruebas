import 'package:flutter/material.dart';
import 'package:myapp/components/submit_button.dart';
import 'package:myapp/components/textfields_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: const TextfieldsLogin()),
          Align(alignment: Alignment.bottomCenter, child: const SubmitButton()),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TextfieldsLogin extends StatelessWidget {
  const TextfieldsLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(8),
          child: TextField(
            maxLength: 4,
            decoration: InputDecoration(
              hintText: "Introduce tu clave de usuario(Numeros)",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(8),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Introduce tu contrasena",
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}

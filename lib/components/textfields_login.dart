import 'package:flutter/material.dart';

class TextfieldsLogin extends StatefulWidget {
  const TextfieldsLogin({super.key});

  @override
  TextfieldsLoginState createState() => TextfieldsLoginState();
}

class TextfieldsLoginState extends State<TextfieldsLogin> {
  TextEditingController usercontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  List<bool> errors = [false, false];

  void ValidateFields() {
    setState(() {
      errors[0] = usercontroller.text.isEmpty;
      errors[1] = passcontroller.text.isEmpty;
    });

    if (!errors[0] && !errors[1]) {
      // Aquí va el código para proceder con el envío (por ejemplo, conectar con una base de datos, etc.)
      print('Campos llenados correctamente');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(8),
          child: TextField(
            controller: usercontroller,
            decoration: InputDecoration(
              hintText: "Introduce tu email",
              border: OutlineInputBorder(),
              errorText: errors[0] ? 'Por favor introduzca un email' : null,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: errors[0] ? Colors.red : Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(8),
          child: TextField(
            controller: passcontroller,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Introduce tu contrasena",
              border: OutlineInputBorder(),
              errorText:
                  errors[1] ? 'Por favor introduzca una contrasena' : null,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: errors[1] ? Colors.red : Colors.black,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

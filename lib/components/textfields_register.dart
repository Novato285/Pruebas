import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/components/submit_button.dart';
import 'package:myapp/user_screens/homepage.dart';

class TextfieldsRegister extends StatefulWidget {
  const TextfieldsRegister({super.key});

  @override
  TextfieldsRegisterState createState() => TextfieldsRegisterState();
}

class TextfieldsRegisterState extends State<TextfieldsRegister> {
  TextEditingController keycontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();

  List<bool> errors = [false, false, false];

  void ValidateFields() {
    setState(() {
      errors[0] = keycontroller.text.isEmpty;
      errors[1] = emailcontroller.text.isEmpty;
      errors[2] = passcontroller.text.isEmpty;
    });

    if (!errors[0] && !errors[1] && !errors[2]) {
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
            controller: keycontroller,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(4),
            ],
            maxLength: 4,
            decoration: InputDecoration(
              hintText: "Introduce tu clave de usuario(Numeros)",
              border: OutlineInputBorder(),
              errorText: errors[0] ? 'Por favor introduzca una clave' : null,
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
              hintText: "Introduce tu email",
              border: OutlineInputBorder(),
              errorText: errors[1]
                  ? 'Por favor introduzca un email'
                  : null,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: errors[1] ? Colors.red : Colors.black,
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
              errorText: errors[2]
                  ? 'Por favor introduzca una contrasena'
                  : null,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: errors[2] ? Colors.red : Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(8),
          child: SubmitButton(
            onSubmit: ValidateFields,
            nextPage: MiNuevaPantalla(),
          ),
        ),
      ],
    );
  }
}

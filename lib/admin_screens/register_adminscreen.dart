import 'package:flutter/material.dart';
import 'package:myapp/components/loginappbar.dart';
import 'package:myapp/components/textfields_register.dart';
import 'package:myapp/user_screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // Controladores para los campos
  final TextEditingController _keyController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _keyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LoginAppBar(),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Campos existentes del formulario
                    const TextfieldsRegister(),

                    // Espacio
                    const SizedBox(height: 20),

                    // Campo para la clave de 4 dígitos
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: _keyController,
                        decoration: const InputDecoration(
                          labelText: 'Clave de registro (4 dígitos)',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) return 'Ingresa la clave';
                          if (value.length != 4 ||
                              !RegExp(r'^[0-9]+$').hasMatch(value)) {
                            return 'La clave debe ser 4 dígitos numéricos';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Botón de "Ya tienes cuenta?"
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: const Text(
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

      // Botón de registro (opcional)
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            // Aquí va tu lógica de registro con Firebase
            // Ej: _registerUser(_keyController.text);
          }
        },
        label: const Text('Registrarse'),
        icon: const Icon(Icons.person_add),
      ),
    );
  }
}

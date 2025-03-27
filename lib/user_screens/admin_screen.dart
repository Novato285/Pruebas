import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';

class AdminScreen extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> _generateNumericKey(BuildContext context) async {
    final random = Random();
    final numericKey = (1000 + random.nextInt(9000)).toString();

    await _firestore.collection('registration_keys').add({
      'key': numericKey,
      'isUsed': false,
      'createdAt': FieldValue.serverTimestamp(),
      'usedBy': null,
    });

    // Ahora sí tenemos acceso a context correctamente
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Clave generada: $numericKey')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Screen"),
      ), // Agregado AppBar para evitar errores con Scaffold
      body: Center(
        child: ElevatedButton(
          onPressed: () => _generateNumericKey(context), // Pasamos context aquí
          child: Text('Generar Clave'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void showNewKeyDialog(BuildContext context) {
  TextEditingController keyController = TextEditingController();
  keyController.text = "Aquí va la clave generada";

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Generar Nueva Clave"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: keyController,
              readOnly: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                keyController.text = "Nueva clave generada";
              },
              child: Text("Generar"),
            ),
          ],
        ),
      );
    },
  );
}

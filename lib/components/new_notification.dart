import 'package:flutter/material.dart';

void showNotificationDialog(BuildContext context) {
  // Lista de opciones para los RadioButtons
  List<String> aspects = [
    "Urgente",
    "Incidente",
    "Otro",
  ];

  // Variable para almacenar la opción seleccionada
  String? selectedAspect = aspects[0]; // Inicializamos con "Urgente"

  // Controladores para los TextField
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Text("Selecciona el tipo de notificación"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Creamos los RadioButtons para seleccionar una opción
                for (var aspect in aspects)
                  RadioListTile<String>(
                    title: Text(aspect),
                    value: aspect,
                    groupValue: selectedAspect,
                    onChanged: (value) {
                      setState(() {
                        selectedAspect = value!;
                      });
                    },
                  ),
                SizedBox(height: 16),
                // TextField para la descripción
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    labelText: "Descripción",
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  ),
                ),
                SizedBox(height: 16),
                // TextField para la fecha
                TextField(
                  controller: dateController,
                  decoration: InputDecoration(
                    labelText: "Fecha",
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  ),
                  keyboardType: TextInputType.datetime, // Para permitir la entrada de fecha
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Cierra el pop-up
                },
                child: Text("Cancelar"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Lógica para manejar los datos cuando se presione Confirmar
                  print("Tipo seleccionado: $selectedAspect");
                  print("Descripción: ${descriptionController.text}");
                  print("Fecha: ${dateController.text}");
                  Navigator.pop(context); // Cierra el pop-up
                },
                child: Text("Confirmar"),
              ),
            ],
          );
        },
      );
    },
  );
}

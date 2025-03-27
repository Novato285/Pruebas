import 'package:flutter/material.dart';

void showNotificationDialog(BuildContext context) {
  List<String> aspects = [
    "Urgente",
    "Importante",
    "Informativo",
    "Reunión",
    "Recordatorio"
  ];

  List<bool> selectedAspects = List.generate(aspects.length, (index) => false);

  showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Text("Selecciona los aspectos"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(aspects.length, (index) {
                return CheckboxListTile(
                  title: Text(aspects[index]),
                  value: selectedAspects[index],
                  onChanged: (bool? value) {
                    setState(() {
                      selectedAspects[index] = value!;
                    });
                  },
                );
              }),
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
                  List<String> selected = [];
                  for (int i = 0; i < aspects.length; i++) {
                    if (selectedAspects[i]) {
                      selected.add(aspects[i]);
                    }
                  }
                  print("Aspectos seleccionados: $selected");
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

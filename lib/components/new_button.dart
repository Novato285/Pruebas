import 'package:flutter/material.dart';
import 'package:myapp/core/app_colors.dart';
import 'package:myapp/components/new_key.dart';
import 'package:myapp/components/new_notification.dart';

class NewButton extends StatelessWidget {
  const NewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.backgroundComponent,
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isDismissible: true,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (context) {
            return Container(
              padding: EdgeInsets.all(16),
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.vpn_key, color: Colors.blue),
                    title: Text("Nueva Clave"),
                    onTap: () {
                      Navigator.pop(context); // Cierra el modal inferior
                      showNewKeyDialog(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications, color: Colors.orange),
                    title: Text("Generar Notificación"),
                    onTap: () {
                      Navigator.pop(context);
                      showNotificationDialog(context);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Icon(Icons.add, color: Colors.white),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/core/app_colors.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onSubmit;

  const SubmitButton({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onSubmit,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              AppColors.backgroundComponent,
            ),
          ),
          child: Text('Enviar', style: TextStyle(color: Colors.black),),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/core/app_colors.dart';

class SubmitButton extends StatefulWidget {
  const SubmitButton({super.key});

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
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

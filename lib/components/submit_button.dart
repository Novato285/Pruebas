import 'package:flutter/material.dart';
import 'package:myapp/core/app_colors.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onSubmit;
  final Widget nextPage;

  const SubmitButton({super.key, required this.onSubmit, required this.nextPage});

  void _handlePress(BuildContext context){
    onSubmit(); 
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => nextPage),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => _handlePress(context),
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

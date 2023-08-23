

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final Function()? onTap;

  const CustomButton({
    super.key,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color(0XFF279EFF),
          borderRadius: BorderRadius.circular(8)
        ),
        child: const Center(
          child: Text(
            'Iniciar sesión',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
        ),
    
      ),
    );
  }
}
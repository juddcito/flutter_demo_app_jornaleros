
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final Function()? onTap;
  final String text;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.text
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: text == 'Asignar' || text == 'Login' ? const Color(0XFF279EFF) : Colors.green,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
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
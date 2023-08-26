

import 'package:flutter/material.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/app_bar/custom_appbar.dart';

class DetalleEmpleadoScreen extends StatelessWidget {

  static const name = 'detalle_empleado_screen';

  const DetalleEmpleadoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('Detalles del empleado'),
      body: SafeArea(
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/app_bar/custom_appbar.dart';

class DetallesAsistenciaScreen extends StatelessWidget {

  static const name = 'detalles_asistencia_screen';

  const DetallesAsistenciaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('Detalles de asistencia'),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
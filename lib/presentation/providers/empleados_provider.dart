import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../screens/cuadrilla/cuadrilla_list.dart';

final empleadosProvider = StateProvider((ref) {
  return 
  [
    EmpleadoList('Sebastián Vega', 'Jornalero'),
    EmpleadoList('Isaac Apodaca', 'Jornalero'),
    EmpleadoList('Jaime Cárdenas', 'Jornalero'),
    EmpleadoList('Luis Maldonado', 'Jornalero'),
    EmpleadoList('Jaime Rábago', 'Jornalero')
  ];

});
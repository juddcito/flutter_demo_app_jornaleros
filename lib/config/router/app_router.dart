import 'package:flutter_demo_app_jornaleros/presentation/screens/chequeo/chequeo_screen.dart';
import 'package:flutter_demo_app_jornaleros/presentation/screens/detalle_empleado/detalle_empleado_screen.dart';
import 'package:flutter_demo_app_jornaleros/presentation/screens/cuadrilla/cuadrilla_screen.dart';
import 'package:flutter_demo_app_jornaleros/presentation/screens/home/home_screen.dart';
import 'package:flutter_demo_app_jornaleros/presentation/screens/login/login_screen.dart';
import 'package:flutter_demo_app_jornaleros/presentation/screens/registro_empleado/registro_empleado_screen.dart';
import 'package:flutter_demo_app_jornaleros/presentation/screens/registro_rostro/registro_rostro_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      name: LoginScreen.name,
      builder: (context, state) => LoginScreen(),
    ),

    GoRoute(
      path: '/home',
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),

    GoRoute(
      path: '/empleados',
      name: EmpleadosScreen.name,
      builder: (context, state) => EmpleadosScreen(),
    ),

    GoRoute(
      path: '/registro-empleado',
      name: RegistroEmpleadoScreen.name,
      builder: (context, state) => RegistroEmpleadoScreen(),
    ),

    GoRoute(
      path: '/detalle-empleado',
      name: DetalleEmpleadoScreen.name,
      builder: (context, state) => DetalleEmpleadoScreen(),
    ),

    GoRoute(
      path: '/registrar-rostro',
      name: RegistroRostroScreen.name,
      builder: (context, state) => RegistroRostroScreen(),
    ),

    GoRoute(
      path: '/chequeo',
      name: ChequeoScreen.name,
      builder: (context, state) => ChequeoScreen(),
    )

  ]
);
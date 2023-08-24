import 'package:flutter_demo_app_jornaleros/presentation/empleados/empleados_screen.dart';
import 'package:flutter_demo_app_jornaleros/presentation/screens/home/home_screen.dart';
import 'package:flutter_demo_app_jornaleros/presentation/screens/login/login_screen.dart';
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
    )

  ]
);
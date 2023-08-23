import 'package:flutter/material.dart';
import 'package:flutter_demo_app_jornaleros/config/theme/app_theme.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/login/custom_button.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/login/username_textfield.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  static const name = 'login_screen';

  LoginScreen({super.key});

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.blue[900]!,
                    Colors.blue[800]!,
                    Colors.blue[400]!,
                  ]
                )
              ),
              child: Column(
                children: [
                  
                  const SizedBox(height: 50),
                  
                  // logo
                  const Icon(
                    FontAwesomeIcons.addressBook,
                    size: 98,
                    color: Colors.white,
                  ),
              
                  const SizedBox(height: 50),
          
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
          
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Bienvenido',
                                  style: TextStyle(
                                    fontWeight:FontWeight.bold,
                                    fontSize: 32
                                  ),
                                ),
                              ],
                            ),
                          ),
          
                          const SizedBox(height: 20,),
          
                          CustomTextfield(
                            controller: usernameController,
                            hintText: 'Usuario',
                            obscureText: false,
                            icon: FontAwesomeIcons.solidUser,
                          ),
          
                          CustomTextfield(
                            controller: passwordController,
                            hintText: 'Contraseña',
                            obscureText: true,
                            icon: FontAwesomeIcons.lock,
                          ),
          
                          const SizedBox(height: 40),
          
                          CustomButton(onTap:() => context.push('/home'))
          
                        ],
                      ),
                    ),
          
                  )
                  
                ],
              ),
            ),
          ),
        ));
  }
}

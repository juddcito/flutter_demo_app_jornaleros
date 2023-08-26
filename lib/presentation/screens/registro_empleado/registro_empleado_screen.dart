import 'package:flutter/material.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/app_bar/custom_appbar.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/chequeo/custom_dropdown.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/login/custom_button.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/login/custom_textfield.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/registro_empleado/custom_datepicker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegistroEmpleadoScreen extends StatefulWidget {

  static const name = 'registro_empleado_screen';

  RegistroEmpleadoScreen({super.key});

  @override
  State<RegistroEmpleadoScreen> createState() => _RegistroEmpleadoScreenState();
}

class _RegistroEmpleadoScreenState extends State<RegistroEmpleadoScreen> {

  final nombreTrabajadorController = TextEditingController();
  final codigoEmitidoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: customAppbar('Registro de empleado'),
      body: SafeArea(
        child: Builder(
          builder: (context) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  // icon usuario
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Icon(
                        FontAwesomeIcons.solidCircleUser,
                        size: 92,
                      ),
                    ),
                  ),  
            
                  
                  // nombre completo
                  CustomTextfield(
                    controller: nombreTrabajadorController,
                    hintText: 'Nombre completo',
                    obscureText: false,
                    icon: FontAwesomeIcons.solidUser
                  ),
            
                  const SizedBox(height: 25,),
            
                  // fecha de nacimiento
                  const CustomDatePicker(),
            
                  const SizedBox(height: 25,),
            
                  // lugar de nacimiento
                  const CustomDropdown(
                    hintText: 'Lugar de nacimiento',
                    icon: Icons.place
                  ),
            
                  const SizedBox(height: 25,),
            
                  // sexo
                  const CustomDropdown(
                    hintText: 'Sexo',
                    icon: FontAwesomeIcons.genderless
                  ),
            
                  const SizedBox(height: 25,),
            
                  //edad
            
                  // código emitido
                  CustomTextfield(
                    controller: nombreTrabajadorController,
                    hintText: 'Código de autorización',
                    obscureText: false,
                    icon: Icons.numbers
                  ),
            
                  const SizedBox(height: 25,),
            
                  // botón guardar
                  CustomButton(
                    onTap: (){},
                    text: 'Guardar'
                  )
                          
                ],
              ),
            );
          }
        ),
      ),

    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/app_bar/custom_appbar.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/login/custom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/chequeo/custom_dropdown.dart';
import '../../widgets/login/custom_textfield.dart';

class ChequeoScreen extends StatelessWidget {
  static const name = 'chequeo';

  ChequeoScreen({super.key});

  final idTrabajadorController = TextEditingController();
  final nombreTrabajadorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppbar('Chequeo'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(253, 158, 158, 158)
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(25, 10, 20, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Datos del trabajador',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
              
                      //const SizedBox(height: 15,),
              
                      // id_trabajador textfield
                      //CustomTextfield(controller: idTrabajadorController, hintText: 'ID', obscureText: false, icon: Icons.numbers),
              
                      const SizedBox(
                        height: 5,
                      ),
              
                      // nombre_trabajador textfield
                      CustomTextfield(
                          controller: idTrabajadorController,
                          hintText: 'Nombre',
                          obscureText: false,
                          icon: Icons.person),
              
                      const SizedBox(
                        height: 15,
                      ),
              
                      //checar button
                      CustomButton(
                          onTap: () {
                            context.push('/registrar-rostro');
                          },
                          text: 'Checar'),
              
                      const SizedBox(
                        height: 15,
                      ),
              
                      //const Divider(),
                    ],
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Asignación',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              // campo textfield
              const CustomDropdown(
                  hintText: 'Campo', icon: FontAwesomeIcons.campground),

              const SizedBox(
                height: 5,
              ),

              // lote textfield
              const CustomDropdown(
                  hintText: 'Lote', icon: FontAwesomeIcons.solidSquare),

              const SizedBox(
                height: 15,
              ),

              // asignar button
              CustomButton(onTap: () {}, text: 'Asignar'),

              const SizedBox(
                height: 15,
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}

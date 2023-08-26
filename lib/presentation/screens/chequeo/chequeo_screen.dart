import 'package:flutter/material.dart';
import 'package:flutter_demo_app_jornaleros/presentation/screens/cuadrilla/cuadrilla_list.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/app_bar/custom_appbar.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/login/custom_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/checkbox_list_tile/gf_checkbox_list_tile.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';
import 'package:go_router/go_router.dart';

import '../../providers/empleados_provider.dart';
import '../../widgets/chequeo/custom_dropdown.dart';
import '../../widgets/login/custom_textfield.dart';

class ChequeoScreen extends StatelessWidget {
  static const name = 'chequeo';

  ChequeoScreen({super.key});

  final idTrabajadorController = TextEditingController();
  final nombreTrabajadorController = TextEditingController();
  final importeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppbar('Asistencia y autorización'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Asignación de actividades',
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
                height: 5,
              ),

              const CustomDropdown(
                  hintText: 'Actividad a realizar',
                  icon: FontAwesomeIcons.pencil),

              const SizedBox(
                height: 5,
              ),

              CustomTextfield(
                controller: importeController,
                hintText: 'Importe',
                obscureText: false,
                icon: FontAwesomeIcons.moneyBill1
              ),

              //const SizedBox(
              //height: 15,
              //),

              // asignar button
              //CustomButton(
              //onTap: () {},
              //text: 'Asignar',
              //),

              //const SizedBox(
              //height: 15,
              //),

              Padding(
                padding: const EdgeInsets.all(25),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(253, 158, 158, 158)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      //const SizedBox(height: 15,),

                      // id_trabajador textfield
                      //CustomTextfield(controller: idTrabajadorController, hintText: 'ID', obscureText: false, icon: Icons.numbers),
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
                      'Historial de asistencia',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              _TrabajadorListview()
            ],
          ),
        ),
      ),
    );
  }
}

class _TrabajadorListview extends ConsumerStatefulWidget {
  const _TrabajadorListview({
    super.key,
  });

  @override
  _TrabajadorListviewState createState() => _TrabajadorListviewState();
}

class _TrabajadorListviewState extends ConsumerState<_TrabajadorListview> {
  @override
  Widget build(BuildContext context) {
    final empleadosListProvider = ref.watch(empleadosProvider);

    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider();
      },
      // agregar siempre que tengamos un listview dentro de un singlechildscrollview
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: empleadosListProvider.length,
      itemBuilder: (context, index) {
        final empleado = empleadosListProvider[index];
        bool valor = true;
        return Column(
          children: [
            InkWell(
              onTap: () {
                debugPrint('Tocado');
              },
              child: _CustomEmpleadoTile(
                  nombre: empleado.nombre,
                  puesto: empleado.puesto,valor: valor
              ),
            ),
          ],
        );
      },
    );
  }
}

class _CustomEmpleadoTile extends StatefulWidget {
  final String nombre;
  final String puesto;

  final bool valor;

  const _CustomEmpleadoTile(
      {required this.valor, required this.nombre, required this.puesto});

  @override
  State<_CustomEmpleadoTile> createState() => _CustomEmpleadoTileState();
}

class _CustomEmpleadoTileState extends State<_CustomEmpleadoTile> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = widget.valor;

    return GFCheckboxListTile(
        //padding: const EdgeInsets.only(top:20),
        titleText: widget.nombre,
        subTitleText: widget.puesto,
        avatar: const Icon(
          FontAwesomeIcons.solidCircleUser,
          size: 52,
        ),
        activeBgColor: Colors.green,
        type: GFCheckboxType.circle,
        activeIcon: const Icon(
          Icons.check,
          size: 16,
          color: Colors.white,
        ),
        value: isChecked,
        onChanged: (value) {
        }
    );
  }
}

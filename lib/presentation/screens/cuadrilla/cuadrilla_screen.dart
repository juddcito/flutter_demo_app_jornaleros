import 'package:flutter/material.dart';
import 'package:flutter_demo_app_jornaleros/presentation/providers/empleados_provider.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/app_bar/custom_appbar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/checkbox_list_tile/gf_checkbox_list_tile.dart';
import 'package:getwidget/getwidget.dart';
import 'package:go_router/go_router.dart';


class EmpleadosScreen extends ConsumerStatefulWidget {
  static const name = 'empleados_screen';

  const EmpleadosScreen({super.key});

  @override
  _EmpleadosScreenState createState() => _EmpleadosScreenState();
}

class _EmpleadosScreenState extends ConsumerState<EmpleadosScreen> {
  @override
  Widget build(BuildContext context) {
    final styles = Theme.of(context).textTheme;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/registro-empleado');
        },
        child: const Icon(Icons.add),
      ),
      extendBodyBehindAppBar: true,
      appBar: customAppbar('Cuadrilla'),
      body: const SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TrabajadoresListView(),
          ],
        ),
      ),
    );
  }
}

class TrabajadoresListView extends ConsumerStatefulWidget {
  const TrabajadoresListView({
    super.key,
  });

  @override
  _TrabajadoresListViewState createState() => _TrabajadoresListViewState();
}

class _TrabajadoresListViewState extends ConsumerState<TrabajadoresListView> {

  @override
  Widget build(BuildContext context) {

    final empleadosListProvider = ref.watch(empleadosProvider);

    return Expanded(
      child: ListView.builder(
        itemCount: empleadosListProvider.length,
        itemBuilder: (context, index) {
          final empleado = empleadosListProvider[index];
          bool valor = false;
          if (index % 2 == 0) {
            valor = true;
          }
          return Column(
            children: [_CustomEmpleadoTile(nombre: empleado.nombre, puesto: empleado.puesto, valor: valor), const Divider()],
          );
        },
      ),
    );
  }
}

class _CustomEmpleadoTile extends StatefulWidget {

  final String nombre;
  final String puesto;

  final bool valor;

   const _CustomEmpleadoTile({
    required this.valor,
    required this.nombre,
    required this.puesto
  });

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
          if (isChecked == false) {
            context.push('/registrar-rostro');
          }
        });
  }
}

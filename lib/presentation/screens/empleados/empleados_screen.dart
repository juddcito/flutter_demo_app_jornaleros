import 'package:flutter/material.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/app_bar/custom_appbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/checkbox_list_tile/gf_checkbox_list_tile.dart';
import 'package:getwidget/getwidget.dart';
import 'package:go_router/go_router.dart';

class EmpleadosScreen extends StatelessWidget {
  static const name = 'empleados_screen';

  const EmpleadosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final styles = Theme.of(context).textTheme;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      extendBodyBehindAppBar: true,
      appBar: customAppbar('Empleados'),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  bool valor = false;
                  if (index % 2 == 0) {
                    valor = true;
                  }
                  return Column(
                    children: [_CustomEmpleadoTile(valor: valor), const Divider()],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomEmpleadoTile extends StatefulWidget {

  final bool valor;

   _CustomEmpleadoTile({
    required this.valor
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
        titleText: 'Sebastián Vega',
        subTitleText: 'Jornalero',
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

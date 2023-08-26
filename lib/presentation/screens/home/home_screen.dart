import 'package:flutter/material.dart';
import 'package:flutter_demo_app_jornaleros/presentation/widgets/home/home_items.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.blue[900]!,
            Colors.blue[800]!,
            Colors.blue[400]!,
          ])),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // logo
              const Padding(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Bienvenido',
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.solidCircleUser,
                      size: 48,
                      color: Colors.white,
                    )
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: Container(
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
                                'Acciones',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Expanded(
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: appHomeItems.length,
                            itemBuilder: (context, index) {
                              final homeItem = appHomeItems[index];
                              return _CustomListTile(homeItem: homeItem);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.homeItem,
  });

  final HomeItem homeItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        onTap:() {
          context.push(homeItem.link);
        },
        leading: Icon(homeItem.icon, size: 38,),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
        title: Text(homeItem.title),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeItem {
  final String title;
  final String link;
  final IconData icon;

  HomeItem(this.title, this.link, this.icon);
}

final appHomeItems = <HomeItem>[
  HomeItem('Campos', 'link', FontAwesomeIcons.campground),
  HomeItem('Lotes', 'link', FontAwesomeIcons.solidSquare),
  HomeItem('Actividades', 'link', FontAwesomeIcons.list),
  HomeItem('Empleados', '/empleados', FontAwesomeIcons.peopleGroup),
  HomeItem('Chequeo', '/chequeo', FontAwesomeIcons.book),
  //HomeItem('Registro de rostros', 'link', FontAwesomeIcons.faceSmile),
];

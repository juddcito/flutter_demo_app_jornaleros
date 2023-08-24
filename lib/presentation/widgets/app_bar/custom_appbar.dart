  import 'package:flutter/material.dart';

AppBar customAppbar(String title) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      toolbarHeight: 90,
      foregroundColor: Colors.white,
      centerTitle: true,
      title: Text(title),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)

          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.blue[900]!,       
              Colors.blue[800]!,
              Colors.blue[400]!,
            ]
          )
        )
      ),
    );
  }
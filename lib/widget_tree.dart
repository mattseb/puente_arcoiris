import 'package:puente_arcoiris/auth.dart';
import 'package:puente_arcoiris/home.dart';
import 'package:puente_arcoiris/login.dart';
import 'package:flutter/material.dart';
import 'package:puente_arcoiris/main.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);
  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Home();
        } else {
          return Login();
        }
      },
    ); // StreamBuilder
  }
}

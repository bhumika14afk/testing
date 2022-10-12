import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tesco/screens/bottom.dart';
import 'package:tesco/screens/login.dart';
import 'package:tesco/screens/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'register': (context) => MyRegister(),
    },
  ));
}

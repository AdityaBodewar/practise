import 'package:flutter/material.dart';
import 'package:pracccc/LoginPage.dart';
import 'package:pracccc/MainScreen.dart';
import 'package:pracccc/Register.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Register(),

   );

  }
}



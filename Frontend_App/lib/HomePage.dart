import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(

     appBar: AppBar(
       leading: Icon(Icons.menu_rounded),

       actions: [
         Padding(padding: EdgeInsets.only(right: 16),
           child: Icon(Icons.person)),



       ],
     ),
   );

  }
}



import 'package:arter/screens/homescreen.dart';
import'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class search extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
      centerTitle: true,
         backgroundColor: Colors.black,
      elevation: 0,
      leading: Builder(
        builder:(BuildContext context){
          return IconButton(
        icon: SvgPicture.asset("assets/back.svg",
        color: Colors.white,),
        onPressed: () {
           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomeScreen(),),
        );
        },
       );
       }),),);}}
       
      
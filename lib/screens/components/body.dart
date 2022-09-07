import 'dart:ui';

import 'package:flutter/material.dart';
class body extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Stack(children:<Widget> [
      Image.asset('assets/images/try1.png',width: 500,height: 200,fit:BoxFit.fitWidth ,),
      Text("\n\n\nA community\n\nbuild for\n\nartists.",
      textAlign: TextAlign.left,style: TextStyle(
        fontSize:15,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic,
        color:Color.fromARGB(255, 33, 31, 31),
      ),),
      // Text('sign up \n share\n buy',style: TextStyle(
      //   fontSize: 15,fontWeight: FontWeight.w200,fontStyle: FontStyle.normal,
      //   color: Color.fromARGB(255, 33, 31, 31),
      // ),)

    ],
    
    );

  }
}
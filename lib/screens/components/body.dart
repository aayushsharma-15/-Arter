import 'dart:ui';

import 'package:flutter/material.dart';
class body extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Stack(children:<Widget> [
      Image.asset('assets/images/artwork.png',width: 500,height: 150,fit:BoxFit.cover ,),
      Text("\nA community build \n for artists.",textAlign: TextAlign.center,style: TextStyle(
        fontSize:25,
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
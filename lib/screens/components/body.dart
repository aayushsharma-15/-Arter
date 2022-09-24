

import 'package:flutter/material.dart';
class body extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Column(
      children: [ Stack(
        children:<Widget> [
      Image.asset('assets/images/try1.png',width: 500,height: 200,fit:BoxFit.fitWidth ,),
      Text("\n\n\nA community\n\nbuild for\n\nartists.",
      textAlign: TextAlign.left,style: TextStyle(
        fontSize:15,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic,
        color:Color.fromARGB(255, 33, 31, 31),
      ),),
      

    ],),
  
    ]
    
    );

  }
}

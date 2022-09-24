import 'package:flutter/material.dart';
class personal extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Container(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: 
        <Widget>[
          Image.asset("assets/images/noimage.png",fit:BoxFit.cover ,),
          ElevatedButton(onPressed: (){},
           child:Icon(Icons.add),
           style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.zero)
            ),
            ),
            )
            
            
       
      ],),
    );
  }}
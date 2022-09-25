

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';



 class personal extends StatelessWidget{
   @override 
 Widget build(BuildContext context){
  
   return Container(
     child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
       children: 
      <Widget>[
        Image.asset("assets/images/noimage.png",fit:BoxFit.cover ,),
        ElevatedButton(onPressed: ()=> showDialog(context: context, builder: (context){
         return Container(
          child: SimpleDialog(
            title: Text("Create post",style: TextStyle(fontWeight: FontWeight.bold),),
            children: [
               SimpleDialogOption(
                
               // padding: EdgeInsets.only(left: 0),
                child:Text("photo with camera"),
                onPressed: (){},
                
              
              ),
               SimpleDialogOption(
                 //padding: EdgeInsets.only(left: 0),
                child:Text("Image from Gallary"),
                onPressed: (){},
                
              ),
               SimpleDialogOption(
                 //padding: EdgeInsets.only(left: 0),
                child:Text("cancel"),
                onPressed: (() => Navigator.pop(context)),
              )
            ],
            
           
          ),
         );
        }),
          child:Icon(Icons.add),
          style: ButtonStyle(
        
           backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
           shape: MaterialStateProperty.all(CircleBorder(side: BorderSide.none)
            // borderRadius: BorderRadius.zero)
           ),
           ),
           )
            
            
       
     ],),
    );
   }}
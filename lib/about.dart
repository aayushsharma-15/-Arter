

import 'package:arter/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class About extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:buildAppBar(),
    body: Container(
      
      child: Container(
      child: Column(
        children:[ Text('ABOUT US',style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.w600
        ),
        ),
        Text(
          '\n\n\nArter is an e-commerce app dedicated to the art lovers\n '+
          'We aim to provide you a simple yet powerful platform\n to show your portfolio and be seen by the '+
          'right people . ', style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.w100
          ),),
        ]
        ),
        
         ),
         
         
         ),
    
    
    
    
    );
    }
    }
          AppBar buildAppBar(){
          return AppBar(
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
       }
       ,)
       ,)
       ;}
  

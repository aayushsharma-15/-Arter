

//import 'dart:js';

//import 'dart:html';
//import 'dart:js';

import 'package:arter/Profile.dart';
import 'package:arter/Shopping.dart';
import 'package:arter/about.dart';
import 'package:arter/my_drawer_header.dart';
import 'package:arter/mydrawerlist.dart';
import 'package:arter/screens/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:arter/constants.dart';
import 'package:flutter/src/material/colors.dart';
import'package:flutter/src/painting/image_resolution.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(

      backgroundColor: Colors.white,
//added drawer 
      drawer:new Drawer(
        backgroundColor: Colors.white,
        child:SingleChildScrollView(
          child:Container(
            child: Column(
              children:[

               MyHeaderDrawer(),
               MyDrawerList(),
              ]
            ),
          ),
        ),
        ),
        //added appbar 
         appBar:buildAppBar(),
         body: body(),
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
        icon: SvgPicture.asset("list_black_36dp.svg",
        color: Colors.white,),
        onPressed: () {Scaffold.of(context).openDrawer();},
       ); },),


      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/search_black_36dp.svg",
            // By default our  icon color is white
            color: Colors.white,
          ),
          onPressed: () {},
        ),

        IconButton(
          icon: SvgPicture.asset(
            "assets/shopping_cart_black_36dp.svg",
            // By default our  icon color is white
            color:Colors.white,
          ),
          onPressed: () {},
        ),

        IconButton(
        icon: SvgPicture.asset("assets/favorite_black_36dp.svg",color: Colors.white,),
        onPressed: () {},
      ),

        SizedBox(width:kDefaultpaddin / 2)
      ],
      );
      }
      
   
  


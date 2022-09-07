
import 'package:arter/Profile.dart';
import 'package:arter/Shopping.dart';
import 'package:arter/about.dart';
import 'package:arter/screens/homescreen.dart';
import 'package:arter/screens/splashscreen.dart';
import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyDrawerList extends StatelessWidget{
  @override 
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.only(top: 12),
        child: Column(
        children:<Widget> [
          
      ListTile(leading: CircleAvatar(
        child: SvgPicture.asset('assets/home_black_36dp.svg',color: Colors.black,),
        backgroundColor: Colors.white,
      ) ,
      title: Text('Home',style: TextStyle(color: Colors.black),),
      onTap: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomeScreen(),),
        );
        },),
        
      ListTile(leading: CircleAvatar(
        child: SvgPicture.asset('assets/account_circle_black_36dp.svg',color: Colors.black,),
        backgroundColor: Colors.white,
      ),
      title: Text('Portfolio',style: TextStyle(color: Colors.black),),
      onTap: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Profile(),),
        );
        },),
      
      ListTile(leading: CircleAvatar(
        child: SvgPicture.asset('assets/shopping_cart_black_36dp.svg',color: Colors.black,),
        backgroundColor: Colors.white,
      ),
      title: Text('Purchase',style: TextStyle(color: Colors.black),),
      onTap: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>shopping(),),
        );
        },),
      ListTile(leading:CircleAvatar(
        child: SvgPicture.asset('assets/info_black_36dp.svg',color: Colors.black,),
        backgroundColor: Colors.white ,
      ) ,
      title: Text('About us',style: TextStyle(color: Colors.black),),onTap: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>About(),),
        );
        },),
      Divider(),

       ListTile(leading: CircleAvatar(
        child: SvgPicture.asset('assets/logout_black_36dp.svg',color: Colors.black,),
        backgroundColor: Colors.white ,
      ),
       title: Text('Log out',style: TextStyle(color: Colors.black),),onTap: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>SplashScreen(),),
        );
        },),
      
        ],)
      );
      
    }
    }
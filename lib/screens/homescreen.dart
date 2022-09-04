

//import 'dart:js';

import 'dart:html';
import 'dart:js';

import 'package:arter/Profile.dart';
import 'package:arter/Shopping.dart';
import 'package:arter/Home.dart';
import 'package:arter/Aboutus.dart';
import 'package:arter/my_drawer_header.dart';
import 'package:arter/screens/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:arter/constants.dart';
import 'package:flutter/src/material/colors.dart';
import'package:flutter/src/painting/image_resolution.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    /*var container;
    if (currentPage == DrawerSections.Home) {
      container = Home();
    } else if (currentPage == DrawerSections.Profile) {
      container = Profile();
    } else if (currentPage == DrawerSections.Shopping) {
      container = shopping();
    } else if (currentPage == DrawerSections.Aboutus) {
      container = Aboutus();
    } */
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 219, 245),
      drawer:new Drawer(
        backgroundColor: Color.fromARGB(255, 241, 219, 245),
        child:SingleChildScrollView(
          child:Container(
            child: Column(
              children:[
                MyHeaderDrawer(),
                MyDrawerList(),
              ]
            ),
          ),
        ),),
         appBar:buildAppBar(),
         body: body(),);} }
         

         AppBar buildAppBar(){
          return AppBar(
      centerTitle: true,
         backgroundColor: Color.fromARGB(255, 181, 109, 194),
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
        icon: SvgPicture.asset("assets/favorite_black_36dp.svg",color: Colors.red,),
        onPressed: () {},
      ),
        SizedBox(width:kDefaultpaddin / 2)
      ],);}
      
   
  
   class MyDrawerList extends StatelessWidget{
 
    var currentPage = DrawerSections.Home;
    
    @override 
    Widget build(BuildContext context) {
      Widget menuItem(int id, String title, IconData icon, bool selected)
    {
    return Material(
      
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell( 
        onTap: () {
          Navigator.pop(context);
          setState(){
            if(id==1){
            currentPage=DrawerSections.Home;
            }
            else if (id==2){
              currentPage=DrawerSections.Profile;
            }
            else if (id==3){
              currentPage=DrawerSections.Shopping;
            }
            else if (id==4){
              currentPage=DrawerSections.Aboutus;
            }
            else if (id==5){
              currentPage=DrawerSections.Logout;
            }
          }
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );}
  
    var container;
    if (currentPage == DrawerSections.Home) {
      container = Home();
    } else if (currentPage == DrawerSections.Profile) {
      container = Profile();
    } else if (currentPage == DrawerSections.Shopping) {
      container = shopping();
    } else if (currentPage == DrawerSections.Aboutus) {
      container = Aboutus();
    }
     
 return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Home", Icons.home,
              currentPage == DrawerSections.Home ? true : false),
          menuItem(2, "Profile", Icons.people_alt_outlined,
              currentPage == DrawerSections.Profile ? true : false),
          menuItem(3, "Shopping", Icons.shopping_cart,
              currentPage == DrawerSections.Shopping ? true : false),
          menuItem(4, "About us", Icons.info,
              currentPage == DrawerSections.Aboutus ? true : false),
          Divider(),
          menuItem(5, "Logout", Icons.logout,
              currentPage == DrawerSections.Logout ? true : false),
          
        ],
      ),
    );
  } 
  // Widget menuItem(int id, String title, IconData icon, bool selected)
  //   {
  //   return Material(
      
  //     color: selected ? Colors.grey[300] : Colors.transparent,
  //     child: InkWell( 
  //       onTap: () {Navigator.push(
          
  //         context,
  //         MaterialPageRoute(builder: ((context) => Home()))
  //       );},
  //       child: Padding(
  //         padding: EdgeInsets.all(15.0),
  //         child: Row(
  //           children: [
  //             Expanded(
  //               child: Icon(
  //                 icon,
  //                 size: 20,
  //                 color: Colors.black,
  //               ),
  //             ),
  //             Expanded(
  //               flex: 3,
  //               child: Text(
  //                 title,
  //                 style: TextStyle(
  //                   color: Colors.black,
  //                   fontSize: 16,
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
  }


enum DrawerSections {
  Home,
  Profile,
  Shopping,
  Aboutus,
  Logout,
  
}


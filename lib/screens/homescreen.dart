import 'package:arter/Shopping.dart';
import 'package:arter/fav.dart';
import 'package:arter/my_drawer_header.dart';
import 'package:arter/mydrawerlist.dart';
import 'package:arter/screens/components/body.dart';
import 'package:arter/screens/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:arter/constants.dart';


class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home:DefaultTabController(
        length: 2,
      
        child: Scaffold(

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
         appBar: AppBar(
          centerTitle: true,
         backgroundColor: Colors.black,
         bottom:const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.group),
                text: 'Community',),
                Tab(icon: Icon(Icons.person),
                text: 'Personal',),
                ],
                ),
      elevation: 0,
      leading: Builder(
        builder:(BuildContext context){
          return IconButton(
        icon: SvgPicture.asset("arrow_right_alt_black_36dp.svg",
        color: Colors.white,),
        onPressed: () {Scaffold.of(context).openDrawer();},
        tooltip: 'Menu',
       ); },),


      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/search_black_36dp.svg",
            // By default our  icon color is white
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> search(),),
        );
          },
          tooltip: 'Search',
        ),

        IconButton(
          icon: SvgPicture.asset(
            "assets/shopping_cart_black_36dp.svg",
            // By default our  icon color is white
            color:Colors.white,
          ),
          onPressed: () { Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>shopping(),),
        );},
          
          tooltip: 'Purchase',
        ),

        IconButton(
        icon: SvgPicture.asset("assets/favorite_black_36dp.svg",color: Colors.white,),
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Favourite(),),
        );
        },
        tooltip: 'Favourite',
      ),

        SizedBox(width:kDefaultpaddin / 2)
      ],
          
         ),
        body: body(),
         
         ),),);
         } 
         }
         

      
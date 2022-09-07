import 'package:arter/screens/homescreen.dart';
import'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'dart:async';
class SplashScreen extends StatefulWidget{
  @override 
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{
  @override 
  void initState(){
    super.initState();

     Timer(Duration(seconds: 5),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomeScreen(),),);
    }
    );
  }
  @override 
  Widget build(BuildContext context ){
    return Scaffold(
      backgroundColor: Colors.white,
      
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/deer.png' ,width: 300,height: 400,fit: BoxFit.cover,),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 114, 114, 114),
            )
          ),  ],
          ),
          ) ,
        
        
        
        
        
        
        
        
        
        
        

        
        
      
    
      
    
  
 ); }

}

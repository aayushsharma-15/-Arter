import 'package:arter/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:arter/constants.dart';


//import 'package:arter/lib/screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ARTER',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor:kTextcolor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      
    );
  }
}

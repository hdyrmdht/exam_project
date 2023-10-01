import 'package:flutter/material.dart';

import 'Screen2.dart';
import 'home_screen.dart';
import 'screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
  initialRoute: "home",
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ScreenTwo.routeName: (context) => ScreenTwo(),
        ScreenThree.routeName: (context) => ScreenThree(),
     
      },
      );
  
  }
}



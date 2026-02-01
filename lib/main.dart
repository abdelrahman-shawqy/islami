import 'package:flutter/material.dart';
import 'package:islame_for_my/Screens/Home.dart';
import 'package:islame_for_my/Screens/introduction.dart';
import 'package:islame_for_my/Screens/souraDetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: introdaction.routeNamed,
      routes: {
        introdaction.routeNamed: (context) => introdaction(),
        HomeScreen.routeNamed: (context) => HomeScreen(),
        souraDetails.routeNamed:(context)=>souraDetails(),
      },
    );
  }
}

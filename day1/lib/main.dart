import 'package:day1/Pages/home_page.dart';
import "package:flutter/material.dart";

import 'Pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:HomePage(),
        themeMode:ThemeMode.dark,  //one way
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        theme:ThemeData(          //other way
          primarySwatch: Colors.amber,
        ),
        routes: {
          "/": (context)=>HomePage(),
          "/login_page": (context)=>LoginPage(),
        }
    );
    
}
}
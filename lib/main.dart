import 'package:app1/pages/calcule_page.dart';
import 'package:app1/pages/first_layout_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/anime_page.dart';
import 'pages/stateful_page.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => const HomePage(),

        '/anime': (context) => const AnimePage(),
        '/stateful': (context) => const StatefulPage(),
        '/firstlayout': (context) => const FirstLayoutPage(),
        '/calcule': (context) => const BMICalculatorPage(),



      },
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
initialRoute: '/home',
    );
  }
}



void main() {
  runApp(const MyApp());
}

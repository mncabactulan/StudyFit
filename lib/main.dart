import 'package:flutter/material.dart';
import 'package:studyfit/pages/home_page.dart';
import 'package:studyfit/pages/main_page.dart';
import 'package:studyfit/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white
        ),

        primarySwatch: Colors.blue,
      ),
      home: Sign_in(),
    );
  }
}


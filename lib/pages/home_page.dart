import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple.shade700.withOpacity(0.8),
              Colors.purple.shade500.withOpacity(0.8),
              Colors.purple.shade300.withOpacity(0.8),
            ],
          ),
        ),
        child: const Center(
          child: Text('My Homepage'),
        ),
      ),
    );
  }
}


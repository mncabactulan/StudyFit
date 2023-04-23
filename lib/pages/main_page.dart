import 'package:flutter/material.dart';
import 'package:studyfit/pages/home_page.dart';
import 'package:studyfit/pages/insights_page.dart';
import 'package:studyfit/pages/more_page.dart';
import 'package:studyfit/pages/settings_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List pages = [
    HomePage(),
    Insights(),
    More(),
    Settings()
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

        appBar: AppBar(
            backgroundColor: Colors.purple,
            elevation: 0,
            title: const Center(
              child: Text('STUDY FIT'),
            ),
            actions: [
        IconButton(
        icon: const Icon(Icons.search),
        onPressed: () {
          // showSearch(
          //   // context: context,
          //   // delegate: MySearch Delegate(),
          // );
        },
    ),
    ],
    ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.purple[200],
        showUnselectedLabels: true,
        showSelectedLabels: true,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Insights',
              icon: Icon(Icons.insights)),
          BottomNavigationBarItem(
              label: 'More',
              icon: Icon(Icons.apps_sharp)),
          BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}

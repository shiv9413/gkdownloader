import 'package:flutter/material.dart';
import 'Exceptions/screen1.dart';
import 'Exceptions/screen2.dart';
import 'Exceptions/screen3.dart';

class HomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  void goToPage(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      screen1(),
      screen2(),
      screen3(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Page Navigation Example'),
      ),
      body: pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: goToPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Descriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: 'Examples',
          ),
        ],
      ),
    );
  }
}
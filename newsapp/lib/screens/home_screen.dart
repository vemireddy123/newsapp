import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _crrentIndex = 0;
  final tabs = [
    Center(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: Text(
        'Search',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: Text(
        'News',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: Text(
        'Profile',
        style: TextStyle(fontSize: 30),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: tabs[_crrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _crrentIndex,
        // type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.blueGrey,
        iconSize: 25,
        selectedFontSize: 17,
        unselectedFontSize: 13,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('News'),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.purple),
        ],
        onTap: (index) {
          setState(() {
            _crrentIndex = index;
          });
        },
      ),
    );
  }
}

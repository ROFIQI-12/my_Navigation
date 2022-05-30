import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarNavBar(),
    );
  }
}

class BelajarNavBar extends StatefulWidget {
  @override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  int _selectedNavbar = 0;
  var _pages = <Widget>[
    Icon(
      Icons.call,
      size: 200,
      color: Colors.green,
    ),
    Icon(
      Icons.camera,
      size: 200,
      color: Colors.green,
    ),
    Icon(
      Icons.person,
      size: 200,
      color: Colors.green,
    ),
  ];

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Navigation AppBar"),
      ),
      body: Center(child: _pages.elementAt(_selectedNavbar)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: ('Call'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: ('Camera'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('Akun'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}

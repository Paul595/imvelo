import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'camera.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    CodeScanner(),
    PlaceholderWidget(Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('imvelo'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart,size:35),
            title: Text('History',style: new TextStyle(
                  color: const Color(0xFF06244e), fontSize: 25.0)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt,size:35),
            title: Text('Scanner',style: new TextStyle(
                  color: const Color(0xFF06244e), fontSize: 25.0)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,size:35),
            title: Text('Settings',style: new TextStyle(
                  color: const Color(0xFF06244e), fontSize: 25.0)),
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    }); 
  }
}
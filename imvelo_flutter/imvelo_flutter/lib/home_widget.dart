import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  static String _code = "";
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    Container(
      color: Colors.amber[600],
      child: Text(
        'Code: $_code',
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      
    ),
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

    Future<String> barcodeResults() async{
      Future<String> back = FlutterBarcodeScanner.scanBarcode(
        "#ff6666",
        "abbrechen",
        true,
        ScanMode.DEFAULT
        );
        return back;
    }

    codeGet(){
      barcodeResults().then((_code){
        print(_code);
      });
    }



  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    }); 
    if(index == 1){
      codeGet();
    }
  }
}
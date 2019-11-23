import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class CodeScanner extends StatelessWidget {
  

  // Future<String> barcodeResults() async{
  //     Future<String> back = FlutterBarcodeScanner.scanBarcode(
  //       "#ff6666",
  //       "abbrechen",
  //       true,
  //       ScanMode.DEFAULT
  //       );
  //       String back2 = await back;
  //       return back2;
  //   }
  

  @override
  Widget build(BuildContext context) {
    

    return Container(
      // child: Text(barcodeResults().toString()),
      color: Colors.yellow,
    );
  }
}
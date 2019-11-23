import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class CodeScanner extends StatelessWidget {
  

  Future<String> barcodeResults() async{
      Future<String> back = FlutterBarcodeScanner.scanBarcode(
        "#ff6666",
       "abbrechen",
        true,
         ScanMode.DEFAULT);

         return Future.value(back);
    }

  @override
  Widget build(BuildContext context) {
    

    return Container(
      child: Text(barcodeResults().toString()),
      color: Colors.yellow,
    );
  }
}
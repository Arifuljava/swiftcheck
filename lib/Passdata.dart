

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class SendData extends StatefulWidget {
  const SendData({super.key});

  @override
  State<SendData> createState() => _SendDataState();
}

class _SendDataState extends State<SendData> {
  static const platform = MethodChannel('my_swift_plugin');

  Future<void> openSwiftPage() async {
    try {
      await platform.invokeMethod('openSwiftPage');
    } catch (e) {
      print('Error opening Swift page: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Send Data to Swift"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async{
              print("Data Send");
              await openSwiftPage();

            },
            child: Text("Send Data to Swift"),
          ),
        ),
      ),
    );
  }
}

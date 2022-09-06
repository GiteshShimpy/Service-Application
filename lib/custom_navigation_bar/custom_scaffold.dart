import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomScaffold extends StatelessWidget {
  final VoidCallback onPressHandler;
  CustomScaffold(this.onPressHandler);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: onPressHandler,
        ),
      ),
      body: Container(
        child: Center(
          child: Text("home"),
        ),
      ),
    );
  }
}

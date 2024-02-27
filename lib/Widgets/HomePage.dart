import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
       
      body: Center(
        child: Container(
          height: 250.0,
          width: 250.0,
          color: Colors.pink,
          child: Center(
            child: Text("H O M E P A G E",
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
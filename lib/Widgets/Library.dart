import 'package:flutter/material.dart';

class Library extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
       
      body: Center(
        child: Container(
          height: 250.0,
          width: 250.0,
          color: Colors.pink,
          child: Center(
            child: Text("L I B R A R Y",
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
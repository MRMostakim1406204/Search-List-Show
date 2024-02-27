import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
   

  @override
  Widget build (BuildContext context) {
    return Scaffold(
       
      body: Center(
        child: Container(
          
          height: 250.0,
          width: 250.0,
          color: Colors.pinkAccent,
          child: Center(
            child: Text("S E T T I N G",
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
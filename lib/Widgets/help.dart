import 'package:flutter/material.dart';

class Help extends StatelessWidget {
   

  @override
  Widget build (BuildContext context) {
    return Scaffold(
       
      body: Center(
        child: Container(
          
          height: 250.0,
          width: 250.0,
          color: Colors.pinkAccent,
          child: Center(
            child: Text("H E L P & F E E D B A C K",
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
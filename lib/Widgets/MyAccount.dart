import 'package:flutter/material.dart';

class Account extends StatefulWidget {
   

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
       
      body: Center(
        child: Container(
          
          height: 250.0,
          width: 250.0,
          color: Colors.pinkAccent,
          child: Center(
            child: Text("M Y A C C O U N T",
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
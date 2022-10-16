//import 'dart:html';

import 'package:flutter/material.dart';

class page1 extends StatelessWidget{
 const page1({Key ? key}) : super(key : key);
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:Container(
          child:Center(
              child:Text("Welcome to Clear \n Tap or swipe to begin",
              textAlign:TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize:40),
)
          )
        )         
          );
    
  }

}
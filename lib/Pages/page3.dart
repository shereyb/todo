import 'package:flutter/material.dart';

class page3 extends StatelessWidget{
 const page3({Key ? key}) : super(key : key);
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:Container(
         child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children:<Widget>[
             Text("Tap and hold to pick an item up.\n \n Drag it up or down to change its priority.",
                    style:TextStyle(fontWeight: FontWeight.bold,fontSize:20),textAlign: TextAlign.center),
            Image.asset('assets/images/page3.png',height:350,width: 350),

           ]
         )
        )
    );

  }
}
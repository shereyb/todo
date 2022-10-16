import 'package:flutter/material.dart';

class page4 extends StatelessWidget{
 const page4({Key ? key}) : super(key : key);
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:Container(
         child:Column(
           children:<Widget>[
             Text("There are three navigation levels...\n\n",
                    style:TextStyle(fontWeight: FontWeight.bold,fontSize:20),textAlign: TextAlign.center),
            Image.asset('assets/images/page4.png',height:350,width: 350),

           ]
         )
        )


        
    );
  }

}
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

class page2 extends StatelessWidget{
 const page2({Key ? key}) : super(key : key);
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:Container(
         child:Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children:<Widget>[
             Text("Clear sorts items by priority.\n \n Important items are highlighted at the top...",
                    style:TextStyle(fontWeight: FontWeight.bold,fontSize:20),textAlign: TextAlign.center),
            Image.asset('assets/images/page2.png',height:350,width: 350),

           ]
         )
        )

        );
    
  }

}
import 'package:flutter/material.dart';

class page6 extends StatelessWidget{
 const page6({Key ? key}) : super(key : key);
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
       body:Container(
         child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children:<Widget>[
             Padding(  padding: const EdgeInsets.only(top: 70.0),
              
             child:Text("Tap on a list to see its content. \n Tap n a list title to edit it...",
                    style:TextStyle(fontWeight: FontWeight.bold,fontSize:20),textAlign: TextAlign.center),),
            Image.asset('assets/images/page6.png',height:350,width: 350),

           ]
         )
        )
          );
  }

}
import 'package:flutter/material.dart';

class page7 extends StatelessWidget{
 const page7({Key ? key}) : super(key : key);
 @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:Container(
         child:Column(
             mainAxisAlignment: MainAxisAlignment.center,
           children:<Widget>[
            Image.asset('assets/images/cloud.png',height:150,width: 150),
             Text("Use ICloud?\n \n Storing your lists in iCloud allows \n you to keep your data in sync \n across your iPhone,iPad and Mac",
                    style:TextStyle(fontWeight: FontWeight.bold,fontSize:20),textAlign: TextAlign.center),
            ListTile(title:Row
            (
              children: <Widget>[
                Padding(padding: EdgeInsets.all(5)),
                  Expanded(child: RaisedButton(onPressed: (){}, child: Text('Not Now'),textColor:Colors.black,)),
                  Expanded(child: RaisedButton(onPressed: (){}, child: Text('Use Icloud'),textColor:Colors.black,)),

            ],
            )
            )
            ],
            
          ),
                
          )
          
           );
          
  }

}
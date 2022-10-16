import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


//import 'package:flutter_app_learning/NavDrawer.dart';
//import 'package:flutter_app_learning/contact.dart';

// void main() {
//   runApp(MyApp());
// }


class themepage extends StatefulWidget {
  @override
  themepageState createState() {
    return themepageState();
  }
}

class themepageState extends State<themepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Themes"),
          // title: Center(
          //   child: Text('Themes'),
          // ),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            Container(
              height: 70,
              color: Colors.green[900],
              child: Text(
                'Heat Map',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                  fontFamily: 'montserrat',
                ),
              ),
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 0.0),
            ),
            Container(
              height: 70,
              color: Colors.green[800],
              child: Text(
                'Shangri La',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                  fontFamily: 'montserrat',
                ),
              ),
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 0.0),
            ),
            Container(
              height: 70,
              color: Colors.green[700],
              child: Text(
                'Draw',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                  fontFamily: 'montserrat',
                ),
              ),
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 0.0),
            ),
            Container(
              height: 70,
              color: Colors.green[600],
              child: Text(
                'Graphite',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                  fontFamily: 'montserrat',
                ),
              ),
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 0.0),
            ),
            Container(
              height: 70,
              color: Colors.green,
              child: Text(
                'Pretty Princess',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                  fontFamily: 'montserrat',
                ),
              ),
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 0.0),
            ),
            Container(
              height: 70,
              color: Colors.green[400],
              child: Text(
                'Lucky Clever',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                  fontFamily: 'montserrat',
                ),
              ),
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 0.0),
            ),
            Container(
              height: 70,
              color: Colors.green[300],
              child: Text(
                'Theme Nair',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                  fontFamily: 'montserrat',
                ),
              ),
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 0.0),
            ),
            Container(
              height: 70,
              color: Colors.green[700],
              child: Text(
                'Magnificiant',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                  fontFamily: 'montserrat',
                ),
              ),
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 0.0),
            ),
            Container(
              height: 70,
              color: Colors.lightGreenAccent[400],
              child: Text(
                'Whale',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                  fontFamily: 'montserrat',
                ),
              ),
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 0.0),
            ),
            Container(
              height: 70,
              color: Colors.lightGreenAccent[400],
              child: Text(
                'Sunflowers',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.wavy,
                  fontFamily: 'montserrat',
                ),
              ),
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 0.0),
            ),
          ],
        ));
  }
}





// onTap:(){
//   Navigator.push(HomePage())
// }










  // Container(
  //             height: 70,
  //             color: Colors.black87,
  //             child: const Center(
  //                 child: Text(
  //               'Themes',
  //               style: TextStyle(color: Colors.white),
  //             )),
  //           ),


//   import 'package:flutter/material.dart';
// import 'package:todoappp/screens/secondpage.dart';

// class homeScreen extends StatefulWidget{
//   homeScreen({Key? key}):super(key:key);

//   @override
//   _homeState createState()=>_homeState ();

// }
// class _homeState extends State<homeScreen>{
//   final palette =[
//      {'My List':0XFF000000},
//     {'Themes':0XDD000000},
//     {'Guide':0XDD000000},
//     {'Tips an Tricks':0X8A000000},
//     {'Privacy Policy':0X73000000},
//     {'Feedback':0X61000000},
//     {'Rate':0X61000000},
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar :AppBar(
//         toolbarHeight: 40.0,
        
//         backgroundColor: Colors.black,
//        title:Center(
//          child: (
//            Text('Menu',
//            textAlign: TextAlign.justify,
//            style: TextStyle(fontSize: 10,
//            color: Colors.white),
//            )
//            ),
//        )
         
//       ),
//       body:Container(
//                    child:ListView.builder(
//           scrollDirection: Axis.vertical,
//            shrinkWrap: false,
//           itemCount: palette.length,
//           itemBuilder: (BuildContext context, int index) =>
//           Hero(tag: palette[index].keys.first,
//            child: GestureDetector(
//              onTap:(){
// Navigator.of(context).push(ColorPageRoute(palette[index]));
//              },
//              child:Container(
//                  height:50,
//                width:double.infinity,
//                color : new Color(palette[index].values.first),
//               //  child: Center
//               //  (
//                   //child: Hero(
//                  //tag : 'text-${palette[index].keys.first}',
//                  child: Text(
//                    palette[index].keys.first,
//                    style: TextStyle(color:Colors.white,fontSize: 25),
//                    textAlign: TextAlign.left,
//                  )
//                ) ,
//                )
//              )
//            )
//         )
//       );
    
    
//   }

// }


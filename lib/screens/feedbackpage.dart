import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
  
//void main() => runApp(feedbackpage());

 // const String url = 'mailto:sherryb56600@gmail.com';
 const String url = 'mailto:shereyb201@gmail.com';

  
_sendingMails() async {
  try{
     await launch(url);
  }catch(e){
    throw 'Could not launch $url';
  }
}
  
  
class feedbackpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text('Feedback'),
          backgroundColor: Colors.blue,
          
        ),
        
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 200.0,
                ),
                const Text(
                  'Feedback',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 20.0,
                ),
                const Text(
                  'For any Queries, Mail us',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  height: 10.0,
                ),
                const ElevatedButton(
                  onPressed: _sendingMails,
                  child: Text('Here'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
// ignore: unused_import
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import './Pages/page1.dart';
import './Pages/page2.dart';
import './Pages/page3.dart';
import './Pages/page4.dart';
import './Pages/page5.dart';
import './Pages/page6.dart';
import './Pages/page7.dart';
import './Pages/login.dart';
class homepage extends StatelessWidget{
  final _controller = PageController();

   homepage({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height : 500,
            child:
              PageView(
                controller : _controller,
                children: [
                  page1(),
                  page2(),
                  page3(),
                  page4(),
                  page5(),
                  page6(),
                  page7(),
                  login(),
                ],
              )
            ),
          
        SmoothPageIndicator(
          controller: _controller,
           count: 8,
          effect: JumpingDotEffect(
            activeDotColor: Colors.red,
            dotColor: Colors.grey,
            dotHeight: 10,
            dotWidth:10,
            spacing:16,
            ),
          ),
       ],
        )
    );
  }
}




import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:my_app/HomeScreen/View/middleCircularRectangleSection.dart';
import 'package:my_app/HomeScreen/View/rowOfLinks.dart';
import 'package:my_app/HomeScreen/View/technologies.dart';

import '../../Constants/onHover.dart';
import 'centerText.dart';
import 'glassmorphism.dart';
import 'movingCircle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween(begin: 0.0, end: 200.0).animate(animationController)
      ..addListener(() {
        setState(() {});
      });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF111010),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.pink,
          height: MediaQuery.of(context).size.height * 2,
          child: Stack(
            // alignment: Alignment.center,
            children: [
              Positioned(
                  left: 0,
                  top: 10,
                  child: MovingCircle(
                    color1: Color(0XFF000AFF),
                    color2: Color(0XFFFF00D6),
                  )),
              Positioned(
                  right: 10,
                  top: 150,
                  child: MovingCircle(
                    color1: Color(0XFFC8F029),
                    color2: Color(0XFFCE5700),
                  )),
              GlassMorphismWidget(),
              // OnHover(),

              // Align(
              //   alignment: Alignment.topCenter,
              //   child: Container(
              //     // height: animation.value,
              //     // width: animation.value,
              //     child: Image.asset("assets/github.png"),
              //   ),
              // ),
              // MiddleCircularRectangleSection()
              Positioned.fill(
                  top: 250,
                  // left: MediaQuery.of(context).size.width,
                  child: CenterText()),
              // Positioned(
              //   top: 500,
              //   child: Container(
              //       color: Colors.greenAccent,
              //       height: MediaQuery.of(context).size.height * 10,
              //       child: Technologies()),
              // )
              // TweenAnimationBuilder(
              //   duration: Duration(seconds: 5),
              //   curve: Curves.bounceOut,
              //   tween: Tween<double>(begin: 10.0, end: 100.0),
              //   builder: (context, value, child) {
              //     return Container(
              //       margin: const EdgeInsets.all(100.0),
              //       color: Colors.green,
              //       height: 100,
              //       width: 100,
              //     );
              //   },
              // ),
              // TweenAnimationBuilder<double>(
              //   tween: Tween(begin: 10.0, end: 100.0),
              //   duration: Duration(seconds: 3),
              //   curve: Curves.easeIn,
              //   // child: widget.child,
              //   builder: (context, value, child) {
              //     return Transform.translate(
              //       offset:
              //           // widget.axis == Axis.horizontal
              //           //     ? Offset(value * widget.offset, 0.0)
              //           //     :
              //           Offset(0.0, 30.0),
              //       child: Container(
              //         // margin: const EdgeInsets.all(100.0),
              //         color: Colors.green,
              //         height: 100,
              //         width: 100,
              //       ),
              //     );
              //   },
              // )

              Positioned.fill(
                top: 800,
                child: Technologies(),
              )
            ],
          ),
        ),
      ),
    );
  }
}



// Stack(
//           children: [
//             Container(
//               child: Row(
//                 children: [
//                   // SlideTransition(
//                   //   // position: _animationVertical,
//                   //   child: Container(
//                   //     decoration: const BoxDecoration(
//                   //       color: Color(0XFF7007F4),
//                   //       shape: BoxShape.circle,
//                   //     ),
//                   //     height: MediaQuery.of(context).size.height * 0.3,
//                   //     width: MediaQuery.of(context).size.width * 0.3,
//                   //   ),
//                   // ),
//                   // SlideTransition(
//                   //   position: _animationVertical2,
//                   //   child: Container(
//                   //     height: MediaQuery.of(context).size.height * 0.3,
//                   //     width: MediaQuery.of(context).size.width * 0.3,
//                   //     decoration: const BoxDecoration(
//                   //       color: Color(0XFF0BE7F5),
//                   //       shape: BoxShape.circle,
//                   //     ),
//                   //   ),
//                   // ),
//                   // SlideTransition(
//                   //   position: _animationVertical3,
//                   //   child: Container(
//                   //     decoration: const BoxDecoration(
//                   //       color: Color(0XFF7007F4),
//                   //       shape: BoxShape.circle,
//                   //     ),
//                   //     height: MediaQuery.of(context).size.height * 0.3,
//                   //     width: MediaQuery.of(context).size.width * 0.3,
//                   //   ),
//                   // ),
//                 ],
//               ),
//             ),

//             /// 1st section ends here............

//             Align(
//               alignment: Alignment.center,
//               child: Container(
//                 height: MediaQuery.of(context).size.height * 0.6,
//                 width: MediaQuery.of(context).size.width * 0.6,
//                 color: Colors.greenAccent,
//               ),
//             )
//           ],
//         ),

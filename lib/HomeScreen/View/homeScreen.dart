import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:my_app/HomeScreen/View/middleCircularRectangleSection.dart';

import 'glassmorphism.dart';
import 'movingCircle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF111010),
      body: Center(
        child: Stack(
          children: const [
            Positioned(
                left: 80,
                top: 40,
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
            const GlassMorphismWidget(),
            Align(
                alignment: Alignment.topCenter,
                child: MiddleCircularRectangleSection()),
          ],
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

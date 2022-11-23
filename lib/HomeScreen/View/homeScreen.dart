import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:my_app/HomeScreen/View/middleCircularRectangleSection.dart';
import 'package:my_app/HomeScreen/View/projects.dart';
import 'package:my_app/HomeScreen/View/rowOfLinks.dart';
import 'package:my_app/HomeScreen/View/technologies.dart';

import '../../Constants/onHover.dart';
import 'centerText.dart';
import 'contact_and_myself.dart';
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
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
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
          height: MediaQuery.of(context).size.height * 2.8,
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  top: 10,
                  child: MovingCircle(
                    color1: Color(0XFF000AFF),
                    color2: Color(0XFFFF00D6),
                  )),
              Positioned(
                  left: 500,
                  top: 1100,
                  child: MovingCircle(
                    color1: Color.fromARGB(255, 132, 183, 14),
                    color2: Color.fromARGB(255, 238, 5, 133),
                  )),
              Positioned(
                  right: 10,
                  top: 150,
                  child: MovingCircle(
                    color1: Color(0XFFC8F029),
                    color2: Color(0XFFCE5700),
                  )),
              GlassMorphismWidget(),
              Positioned.fill(
                top: 250,
                child: CenterText(),
              ),
              Positioned.fill(
                top: 850,
                child: Technologies(),
              ),
              Positioned.fill(
                top: 1300,
                child: Projects(),
              ),
              Positioned.fill(
                top: 1900,
                child: Contact(),
              ),
              Positioned.fill(
                top: 2650,
                left: 10,
                child: Text(
                  "Made in flutter",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.2), fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

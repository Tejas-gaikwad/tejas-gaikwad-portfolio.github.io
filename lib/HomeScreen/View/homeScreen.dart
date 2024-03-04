import 'package:flutter/material.dart';
import 'package:my_app/HomeScreen/View/projects.dart';
import 'package:my_app/HomeScreen/View/technologies.dart';
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
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0XFF111010),
      body: SingleChildScrollView(
        child: SizedBox(
          // height: MediaQuery.of(context).size.height * 3.8,
          child: Stack(
            children: [
              const Positioned(
                  left: 0,
                  top: 10,
                  child: MovingCircle(
                    color1: Color(0XFF000AFF),
                    color2: Color(0XFFFF00D6),
                  )),
              const Positioned(
                  left: 500,
                  top: 1100,
                  child: MovingCircle(
                    color1: Color.fromARGB(255, 132, 183, 14),
                    color2: Color.fromARGB(255, 238, 5, 133),
                  )),
              const Positioned(
                  right: 10,
                  top: 150,
                  child: MovingCircle(
                    color1: Color(0XFFC8F029),
                    color2: Color(0XFFCE5700),
                  )),
              const GlassMorphismWidget(),

              Column(
                children: [
                  CenterText(),
                  SizedBox(height: width > 700 ? 150 : 20),
                  Technologies(),
                  SizedBox(height: width > 700 ? 150 : 20),
                  const Projects(),

                  // TODO ADD Review of Tejas section here ............

                  SizedBox(height: width > 700 ? 150 : 20),
                  const Contact(),
                  SizedBox(height: width > 700 ? 40 : 20),
                ],
              )
              // Positioned.fill(
              //   top: width > 700 ? 250 : 160,
              //   child: const CenterText(),
              // ),
              // Positioned.fill(
              //   top: width <= 1000 ? 950 : 850,
              //   child: const Technologies(),
              // ),
              // Positioned.fill(
              //   top: width <= 1000 ? 1300 : 1300,
              //   child: const Projects(),
              // ),
              // Positioned.fill(
              //   top: width <= 1000 ? 2150 : 1950,
              //   child: const Contact(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_app/Constants/onHover.dart';
import 'package:my_app/HomeScreen/View/rowOfLinks.dart';

import '../../Constants/gradienttext.dart';

class CenterText extends StatefulWidget {
  const CenterText({super.key});

  @override
  State<CenterText> createState() => _CenterTextState();
}

class _CenterTextState extends State<CenterText>
    with SingleTickerProviderStateMixin {
  bool isHover = false;

  late Animation<Offset> _animation1;
  late Animation<Offset> _animation2;
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    _animation1 = Tween<Offset>(
            begin: const Offset(-0.06, 0.0), end: const Offset(0.0, 0.0))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _animation2 = Tween<Offset>(
            begin: const Offset(0.06, 0.0), end: const Offset(0.0, 0.0))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          // alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SlideTransition(
                    position: _animation1,
                    child: GradientText(
                      "Tejas ",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Pressstart",
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),
                      gradient: LinearGradient(colors: [
                        Colors.blue.shade400,
                        Colors.tealAccent,
                      ]),
                    ),
                  ),
                  SlideTransition(
                    position: _animation2,
                    child: GradientText(
                      "Gaikwad",
                      style: TextStyle(
                        fontFamily: "Pressstart",
                        color: Colors.white,
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),
                      gradient: LinearGradient(colors: [
                        Colors.orange.shade400,
                        Colors.pinkAccent,
                      ]),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 60),
              Container(
                decoration: const BoxDecoration(boxShadow: [
                  // BoxShadow(
                  //     color: Colors.grey.withOpacity(0.14),
                  //     offset: Offset(0.0, 0.0),
                  //     blurRadius: 30,
                  //     spreadRadius: 2)
                ]),
                width: MediaQuery.of(context).size.width / 1.2,
                child: const Text(
                  "A Passionate Software Developer, Product creator, FilmMaker, Always eager to learn and make something out of it. ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Pacifico",
                    color: Colors.white60,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
        Container(
          height: 120,
          alignment: Alignment.center,
          child: RowOfLinks(),
        ),
      ],
    );
  }
}

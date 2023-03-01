import 'package:flutter/material.dart';
import 'package:my_app/Constants/onHover.dart';
import 'package:my_app/HomeScreen/View/rowOfLinks.dart';
import 'dart:js' as js;
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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print("WIDTH --- " + width.toString());
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
              width <= 1000
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SlideTransition(
                          position: _animation1,
                          child: GradientText(
                            "Tejas ",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Pressstart",
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                            gradient: LinearGradient(colors: [
                              Colors.blue.shade400,
                              Colors.tealAccent,
                            ]),
                          ),
                        ),
                        SizedBox(height: 60),
                        SlideTransition(
                          position: _animation2,
                          child: GradientText(
                            "Gaikwad",
                            style: TextStyle(
                              fontFamily: "Pressstart",
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                            gradient: LinearGradient(colors: [
                              Colors.orange.shade400,
                              Colors.pinkAccent,
                            ]),
                          ),
                        )
                      ],
                    )
                  : Row(
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
                child: Text(
                  "A Passionate Software Developer, Product creator, FilmMaker, Always eager to learn and make something out of it. ",
                  textAlign: width <= 1000 ? TextAlign.start : TextAlign.center,
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
        const SizedBox(height: 60),
        MouseRegion(
          onEnter: (f) {
            setState(() {
              isHover = true;
            });
          },
          onExit: (f) {
            setState(() {
              isHover = false;
            });
          },
          child: InkWell(
            onTap: () {
              js.context.callMethod('open', [
                'https://drive.google.com/file/d/1R8uSvorlXZjdwg0cXhvoICxhqUyrL3Kr/view?usp=share_link'
              ]);
            },
            child: AnimatedContainer(
              curve: Curves.easeIn,
              margin: EdgeInsets.only(top: isHover ? 0 : 4),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              height: width <= 1000
                  ? MediaQuery.of(context).size.height * 0.05
                  : MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width / 6,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1.0),
                gradient: LinearGradient(
                  colors: [
                    isHover ? Colors.blueAccent : Colors.transparent,
                    isHover ? Colors.pink : Colors.transparent,
                  ],
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
              duration: Duration(milliseconds: 200),
              child: Text(
                "Resume",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: width <= 1000 ? 15 : 30,
                    fontFamily: "Patrick"),
              ),
            ),
          ),
        )
      ],
    );
  }
}

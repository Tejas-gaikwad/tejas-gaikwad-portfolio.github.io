import 'package:flutter/material.dart';
import 'dart:js' as js;
import '../../Constants/onHover.dart';
import '../../Constants/slideAnimation1.dart';

class RowOfLinks extends StatefulWidget {
  const RowOfLinks({super.key});

  @override
  State<RowOfLinks> createState() => _RowOfLinksState();
}

class _RowOfLinksState extends State<RowOfLinks>
    with SingleTickerProviderStateMixin {
  // late Animation<Offset> _animation1;
  // late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _controller = AnimationController(
    //     vsync: this, duration: const Duration(milliseconds: 600));
    // _animation1 = Tween<Offset>(
    //         begin: const Offset(0.00, 2.0), end: const Offset(0.0, 0.0))
    //     .animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));
    // _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width > 700 ? width / 2 : width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SlideAnimationWidget(
            duration: 600,
            child: OnHover(
              onTap: () {
                js.context.callMethod('open',
                    ['https://www.linkedin.com/in/tejas-gaikwad-216b3a19a/']);
              },
              color1: const Color.fromARGB(255, 5, 76, 146),
              color2: Colors.transparent,
              textImage: "assets/linkedin.png",
              // ),
            ),
          ),
          // SizedBox(width: 60),
          SlideAnimationWidget(
            duration: 800,
            child: OnHover(
              onTap: () {
                js.context
                    .callMethod('open', ['https://github.com/tejas-gaikwad']);
              },
              color1: Colors.purple.shade600,
              color2: Colors.transparent,
              textImage: "assets/github.png",
              // ),
            ),
          ),
          // SizedBox(width: 60),
          SlideAnimationWidget(
            duration: 1000,
            child: OnHover(
              onTap: () {
                js.context.callMethod('open', [
                  'https://twitter.com/tejasg0504?t=NWQ60EadFB82bNt37xE1og&s=08'
                ]);
              },
              color1: const Color.fromARGB(255, 78, 159, 226),
              color2: Colors.transparent,
              textImage: "assets/twitter.png",
              // ),
            ),
          ),
          // SizedBox(width: 60),
          SlideAnimationWidget(
            duration: 1000,
            child: OnHover(
              onTap: () {
                js.context
                    .callMethod('open', ['https://medium.com/@tejasg4646']);
              },
              color1: const Color.fromARGB(255, 78, 159, 226),
              color2: Colors.transparent,
              textImage: "assets/medium_logo.png",
            ),
          ),
        ],
      ),
    );
  }
}

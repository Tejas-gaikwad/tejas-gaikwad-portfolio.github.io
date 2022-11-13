import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math' as math;

class MovingCircle extends StatefulWidget {
  final color1;
  final color2;
  const MovingCircle({super.key, required this.color1, required this.color2});

  @override
  State<MovingCircle> createState() => _MovingCircleState();
}

class _MovingCircleState extends State<MovingCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
    )..repeat(reverse: false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 700,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            child: child,
          );
        },
        child: Container(
          decoration: const BoxDecoration(
            // color: Colors.amber,
            shape: BoxShape.circle,
          ),
          // height: 100,
          // width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0.0, 100.0),
                      color: widget.color1,
                      spreadRadius: 70,
                      blurRadius: 150,
                    ),
                  ],
                ),
                height: 200,
                width: 200,
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0.0, 100.0),
                      color: widget.color2,
                      spreadRadius: 70,
                      blurRadius: 150,
                    ),
                  ],
                  shape: BoxShape.circle,
                ),
                height: 200,
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

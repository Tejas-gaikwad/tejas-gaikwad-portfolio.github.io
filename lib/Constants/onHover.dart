import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnHover extends StatefulWidget {
  final child;
  final color1;
  final color2;
  final textImage;
  final onTap;

  OnHover({
    super.key,
    this.child,
    this.color1,
    this.color2,
    this.textImage,
    this.onTap,
  });

  @override
  State<OnHover> createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
        onTap: widget.onTap,
        child: AnimatedContainer(
          padding: const EdgeInsets.all(8.0),
          height: isHover ? 70 : 50,
          width: isHover ? 70 : 50,
          decoration: BoxDecoration(
            color: isHover ? widget.color1 : widget.color2,
            boxShadow: [
              BoxShadow(
                  // color: Colors.blue.shade700,
                  color: isHover ? widget.color1 : widget.color2,
                  offset: Offset(1.0, 3.0),
                  spreadRadius: 0.2,
                  blurRadius: 10.0)
            ],
            shape: BoxShape.circle,
          ),
          duration: Duration(milliseconds: 200),
          child: Image.asset(
            widget.textImage,
            color: Colors.white,
            height: 30,
            width: 30,
          ),
        ),
      ),
    );
  }

  void onEntered(bool isHover) {
    setState(() {
      this.isHover = isHover;
    });
  }
}

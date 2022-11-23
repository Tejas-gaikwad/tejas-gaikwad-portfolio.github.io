import 'package:flutter/material.dart';

class SlideAnimationWidget extends StatefulWidget {
  final child;
  final duration;
  const SlideAnimationWidget({
    super.key,
    required this.child,
    required this.duration,
  });

  @override
  State<SlideAnimationWidget> createState() => _SlideAnimationWidgetState();
}

class _SlideAnimationWidgetState extends State<SlideAnimationWidget>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> _animation1;
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: widget.duration));
    _animation1 = Tween<Offset>(
            begin: const Offset(0.00, 2.0), end: const Offset(0.0, 0.0))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation1,
      child: widget.child,
    );
  }
}

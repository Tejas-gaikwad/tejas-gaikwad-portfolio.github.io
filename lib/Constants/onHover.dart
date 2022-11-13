import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnHover extends StatefulWidget {
  final builder;
  const OnHover({
    super.key,
    this.builder,
  });

  @override
  State<OnHover> createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 700),
        child: widget.builder(isHover),
      ),
    );
  }

  void onEntered(bool isHover) {
    setState(() {
      this.isHover = isHover;
    });
  }
}

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Technologies extends StatefulWidget {
  const Technologies({super.key});

  @override
  State<Technologies> createState() => _TechnologiesState();
}

class _TechnologiesState extends State<Technologies> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Technologies I have worked with",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Pacifico",
            color: Colors.white60,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        )
      ],
    );
  }
}

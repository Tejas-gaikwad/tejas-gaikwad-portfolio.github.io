import 'package:flutter/material.dart';
import 'dart:js' as js;
import '../../Constants/onHover.dart';

class RowOfLinks extends StatefulWidget {
  const RowOfLinks({super.key});

  @override
  State<RowOfLinks> createState() => _RowOfLinksState();
}

class _RowOfLinksState extends State<RowOfLinks> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OnHover(
          onTap: () {
            js.context.callMethod('open',
                ['https://www.linkedin.com/in/tejas-gaikwad-216b3a19a/']);
          },
          color1: Color.fromARGB(255, 5, 76, 146),
          color2: Colors.transparent,
          textImage: "assets/linkedin.png",
          // ),
        ),
        SizedBox(width: 60),
        OnHover(
          onTap: () {
            js.context.callMethod('open', ['https://github.com/tejas-gaikwad']);
          },
          color1: Colors.purple.shade600,
          color2: Colors.transparent,
          textImage: "assets/github.png",
          // ),
        ),
        SizedBox(width: 60),
        OnHover(
          onTap: () {
            js.context.callMethod('open', [
              'https://twitter.com/tejasg0504?t=NWQ60EadFB82bNt37xE1og&s=08'
            ]);
          },
          color1: Color.fromARGB(255, 78, 159, 226),
          color2: Colors.transparent,
          textImage: "assets/twitter.png",
          // ),
        ),
      ],
    );
  }
}

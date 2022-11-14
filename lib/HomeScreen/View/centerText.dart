import 'package:flutter/material.dart';
import 'package:my_app/Constants/onHover.dart';
import 'package:my_app/HomeScreen/View/rowOfLinks.dart';

import '../../Constants/gradienttext.dart';

class CenterText extends StatefulWidget {
  const CenterText({super.key});

  @override
  State<CenterText> createState() => _CenterTextState();
}

class _CenterTextState extends State<CenterText> {
  bool isHover = false;
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
                  GradientText(
                    "Tejas ",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Pressstart",
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                    gradient: LinearGradient(colors: [
                      Colors.blue.shade400,
                      Colors.tealAccent,
                    ]),
                  ),
                  GradientText(
                    "Gaikwad",
                    style: TextStyle(
                      fontFamily: "Pressstart",
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                    gradient: LinearGradient(colors: [
                      Colors.orange.shade400,
                      Colors.pinkAccent,
                    ]),
                  )
                ],
              ),
              const SizedBox(height: 60),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.14),
                      offset: Offset(0.0, 0.0),
                      blurRadius: 30,
                      spreadRadius: 2)
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

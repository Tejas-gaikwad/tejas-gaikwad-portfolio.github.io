import 'package:flutter/material.dart';
import 'package:my_app/Constants/onHover.dart';

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
    return Align(
      alignment: Alignment.center,
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
          const Text(
            "A Passionate Software Developer, Product creator, FilmMaker, Always eager to learn and make something out of it. ",
            style: TextStyle(
              color: Colors.white60,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 60),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnHover(builder: (isHover) {
                  //   InkWell(
                  // onHover: (value) {
                  //   setState(() {
                  //     isHover = value;
                  //   });
                  // },
                  // child:
                  Container(
                    padding: EdgeInsets.only(
                        top: (isHover) ? 05 : 10.0,
                        bottom: !(isHover) ? 10 : 20),
                    // duration: Duration(milliseconds: 500),
                    // padding: EdgeInsets.all(10),
                    color: (isHover) ? Colors.blueAccent : Colors.greenAccent,
                    height: 60,
                    width: 60,
                    child: Image.asset("assets/linkedin.png"),
                  );
                  // ),
                }),
                SizedBox(width: 60),
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/twitter.png"),
                ),
                SizedBox(width: 60),
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/github.png"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

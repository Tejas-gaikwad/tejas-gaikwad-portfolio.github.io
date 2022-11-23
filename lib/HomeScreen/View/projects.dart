import 'dart:ui';

import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.greenAccent,
      child: Column(
        children: [
          const Text(
            "My Projects",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Pacifico",
              color: Colors.white60,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 80),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RowCard(),
              SizedBox(width: 20),
              RowCard(),
              SizedBox(width: 20),
              RowCard(),
            ],
          ),
        ],
      ),
    );
  }
}

class RowCard extends StatefulWidget {
  final onTap;
  RowCard({super.key, this.onTap});

  @override
  State<RowCard> createState() => _RowCardState();
}

class _RowCardState extends State<RowCard> {
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
          margin: EdgeInsets.only(top: isHover ? 0 : 10),
          duration: Duration(milliseconds: 200),
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width / 7,
          decoration: BoxDecoration(
            // border: Border.all(color: Colors.greenAccent, width: 1.5),
            borderRadius: BorderRadius.circular(4.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.2),
                Colors.white.withOpacity(isHover ? 0.25 : 0.15),
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  // color: Colors.grey,
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/firebase.png",
                      height: 150,
                    ),
                    SizedBox(height: 20),
                    Text("Tejas gaikwad")
                  ],
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: 5,
                width: isHover ? 80 : 10,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    gradient: LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.yellow,
                        Colors.green,
                        Colors.pinkAccent,
                        Colors.purple,
                        Colors.blue,
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

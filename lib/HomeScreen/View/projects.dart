import 'dart:ui';

import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  List projectsName = [
    "Instagram clone using Flutter and Firebase",
    "Amazon clone using Flutter and NodeJs",
    "Drawing App in flutter",
    "Advanced to-do application",
  ];
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
              RowCard(projectName: projectsName[0]),
              SizedBox(width: 40),
              RowCard(projectName: projectsName[1]),
              SizedBox(width: 40),
              RowCard(projectName: projectsName[2]),
              SizedBox(width: 40),
              RowCard(projectName: projectsName[3]),
            ],
          ),
        ],
      ),
    );
  }
}

class RowCard extends StatefulWidget {
  final onTap;
  final projectName;
  RowCard({super.key, this.onTap, this.projectName});

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
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          margin: EdgeInsets.only(top: isHover ? 0 : 10),
          duration: Duration(milliseconds: 200),
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width / 7,
          decoration: BoxDecoration(
            // color: Colors.red,
            // border: Border.all(color: Colors.greenAccent, width: 1.5),
            borderRadius: BorderRadius.circular(4.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.2),
                Colors.white.withOpacity(isHover ? 0.30 : 0.20),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    height: MediaQuery.of(context).size.height / 6,
                    decoration: BoxDecoration(
                      // color: Colors.grey,
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/firebase.png",
                        height: MediaQuery.of(context).size.height / 7,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    widget.projectName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomLeft,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 5,
                  width: isHover ? 80 : 10,
                  decoration: const BoxDecoration(
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

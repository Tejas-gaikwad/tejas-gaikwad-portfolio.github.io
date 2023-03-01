import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:js' as js;
import '../../allProjects/allProjects.dart';

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

  List projectsImages = [
    "assets/instagram.png",
    "assets/amazon.png",
    "assets/drawing-app.jpeg",
    "assets/mern-todo.jpeg",
  ];

  List projectsLinks = [
    "https://github.com/Tejas-gaikwad/insta_clone",
    "https://github.com/Tejas-gaikwad/Amazon-clone-using-nodejs-flutter",
    "https://github.com/Tejas-gaikwad/custom-painter-app",
    "https://github.com/Tejas-gaikwad/Todo_app_using_NODEJS_and_mongo-",
  ];

  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      // color: Colors.greenAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "My Projects",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Pacifico",
              color: Colors.white60,
              fontWeight: FontWeight.bold,
              fontSize: width <= 1000 ? 15 : 30,
            ),
          ),
          const SizedBox(height: 80),
          width <= 1000
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RowCard(
                          projectName: projectsName[0],
                          imageFilePAth: projectsImages[0],
                          onTap: () {
                            js.context.callMethod('open', [projectsLinks[0]]);
                          },
                        ),
                        SizedBox(width: 40),
                        RowCard(
                          projectName: projectsName[1],
                          imageFilePAth: projectsImages[1],
                          onTap: () {
                            js.context.callMethod('open', [projectsLinks[1]]);
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RowCard(
                          projectName: projectsName[2],
                          imageFilePAth: projectsImages[2],
                          onTap: () {
                            js.context.callMethod('open', [projectsLinks[2]]);
                          },
                        ),
                        SizedBox(width: 40),
                        RowCard(
                          projectName: projectsName[3],
                          imageFilePAth: projectsImages[3],
                          onTap: () {
                            js.context.callMethod('open', [projectsLinks[3]]);
                          },
                        ),
                      ],
                    ),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RowCard(
                      projectName: projectsName[0],
                      imageFilePAth: projectsImages[0],
                      onTap: () {
                        js.context.callMethod('open', [projectsLinks[0]]);
                      },
                    ),
                    SizedBox(width: 40),
                    RowCard(
                      projectName: projectsName[1],
                      imageFilePAth: projectsImages[1],
                      onTap: () {
                        js.context.callMethod('open', [projectsLinks[1]]);
                      },
                    ),
                    SizedBox(width: 40),
                    RowCard(
                      projectName: projectsName[2],
                      imageFilePAth: projectsImages[2],
                      onTap: () {
                        js.context.callMethod('open', [projectsLinks[5]]);
                      },
                    ),
                    SizedBox(width: 40),
                    RowCard(
                      projectName: projectsName[3],
                      imageFilePAth: projectsImages[3],
                      onTap: () {
                        js.context.callMethod('open', [projectsLinks[3]]);
                      },
                    ),
                  ],
                ),
          const SizedBox(height: 80),
          MouseRegion(
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
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AllProjects();
                  },
                ));
              },
              child: Container(
                alignment: Alignment.center,
                color: isHover
                    ? Color.fromARGB(255, 15, 43, 92)
                    : Color.fromARGB(255, 15, 43, 92).withOpacity(0.4),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                width: width / 4,
                child: Text("All Projects",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Pacifico",
                      color: isHover
                          ? Colors.white
                          : Colors.white.withOpacity(0.4),
                      fontWeight: FontWeight.bold,
                      fontSize: width <= 1000 ? 15 : 30,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RowCard extends StatefulWidget {
  final onTap;
  final projectName;
  final imageFilePAth;
  RowCard({super.key, this.onTap, this.projectName, this.imageFilePAth});

  @override
  State<RowCard> createState() => _RowCardState();
}

class _RowCardState extends State<RowCard> {
  bool isHover = false;

  _RowCardState();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
          height: width <= 1000
              ? MediaQuery.of(context).size.height / 3
              : MediaQuery.of(context).size.height / 3,
          width: width <= 1000
              ? MediaQuery.of(context).size.width / 4
              : MediaQuery.of(context).size.width / 7,
          decoration: BoxDecoration(
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
                      color: Colors.grey,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        widget.imageFilePAth == null
                            ? "assets/amazon.png"
                            : widget.imageFilePAth,
                        height: MediaQuery.of(context).size.height / 7,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    widget.projectName,
                    style: TextStyle(
                        fontFamily: "Patrick",
                        color: Colors.white,
                        fontSize: width <= 1000 ? 12 : 16,
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

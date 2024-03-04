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
  List<ProjectModel> list = [
    ProjectModel(
      projectName: "Instagram clone using Flutter and Firebase",
      projectImage: "assets/instagram.png",
      projectLink: "https://github.com/Tejas-gaikwad/insta_clone",
    ),
    ProjectModel(
      projectName: "Amazon clone using Flutter and NodeJs",
      projectImage: "assets/amazon.png",
      projectLink:
          "https://github.com/Tejas-gaikwad/Amazon-clone-using-nodejs-flutter",
    ),
    ProjectModel(
      projectName: "Drawing App in flutter",
      projectImage: "assets/drawing-app.jpeg",
      projectLink: "https://github.com/Tejas-gaikwad/custom-painter-app",
    ),
    ProjectModel(
      projectName: "Advanced to-do application",
      projectImage: "assets/mern-todo.jpeg",
      projectLink:
          "https://github.com/Tejas-gaikwad/Todo_app_using_NODEJS_and_mongo-",
    ),
  ];

  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      // height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: width > 700 ? Alignment.centerLeft : Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: width > 700 ? 30 : 0),
              child: Text(
                "My Projects",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                  fontSize: width <= 1000 ? 15 : 30,
                ),
              ),
            ),
          ),
          SizedBox(height: width <= 700 ? 20 : 60),

          Container(
            alignment: Alignment.center,
            // color: Colors.green,
            // height: MediaQuery.of(context).size.height / 3,
            child: width <= 700
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: list.length < 5 ? list.length : 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          js.context
                              .callMethod('open', [list[index].projectLink]);
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          height: height / 6,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 34, 33, 33),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(width: 20),
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    list[index].projectImage,
                                    fit: BoxFit.cover,
                                    height: width <= 700 ? 80 : 60,
                                    // width: width <= 700 ? 40 : 60,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      list[index].projectName,
                                      maxLines: 3,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      // color: Colors.green,
                                      child: Image.asset(
                                        "assets/github.png",
                                        height: width <= 700 ? 20 : 60,
                                        width: width <= 700 ? 20 : 60,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                : GridView.builder(
                    shrinkWrap: true,
                    itemCount: list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: width <= 700 ? 1.0 : 2.0,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          js.context
                              .callMethod('open', [list[index].projectLink]);
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 22),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 34, 33, 33),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    list[index].projectImage,
                                    fit: BoxFit.cover,
                                    height: width <= 700 ? 80 : 60,
                                    // width: width <= 700 ? 40 : 60,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      list[index].projectName,
                                      maxLines: 3,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    const SizedBox(height: 10),
                                    InkWell(
                                      onTap: () {
                                        js.context.callMethod(
                                            'open', [list[index].projectLink]);
                                      },
                                      child: Container(
                                        // color: Colors.green,
                                        child: Image.asset(
                                          "assets/github.png",
                                          height: width <= 700 ? 20 : 20,
                                          width: width <= 700 ? 20 : 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),

          // width <= 1000
          //     ? Column(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Row(
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               RowCard(
          //                 projectName: projectsName[0],
          //                 imageFilePAth: projectsImages[0],
          //                 onTap: () {
          //                   js.context.callMethod('open', [projectsLinks[0]]);
          //                 },
          //               ),
          //               SizedBox(width: 40),
          //               RowCard(
          //                 projectName: projectsName[1],
          //                 imageFilePAth: projectsImages[1],
          //                 onTap: () {
          //                   js.context.callMethod('open', [projectsLinks[1]]);
          //                 },
          //               ),
          //             ],
          //           ),
          //           SizedBox(height: 40),
          //           Row(
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               RowCard(
          //                 projectName: projectsName[2],
          //                 imageFilePAth: projectsImages[2],
          //                 onTap: () {
          //                   js.context.callMethod('open', [projectsLinks[2]]);
          //                 },
          //               ),
          //               SizedBox(width: 40),
          //               RowCard(
          //                 projectName: projectsName[3],
          //                 imageFilePAth: projectsImages[3],
          //                 onTap: () {
          //                   js.context.callMethod('open', [projectsLinks[3]]);
          //                 },
          //               ),
          //             ],
          //           ),
          //         ],
          //       )
          //     : Row(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           RowCard(
          //             projectName: projectsName[0],
          //             imageFilePAth: projectsImages[0],
          //             onTap: () {
          //               js.context.callMethod('open', [projectsLinks[0]]);
          //             },
          //           ),
          //           SizedBox(width: 40),
          //           RowCard(
          //             projectName: projectsName[1],
          //             imageFilePAth: projectsImages[1],
          //             onTap: () {
          //               js.context.callMethod('open', [projectsLinks[1]]);
          //             },
          //           ),
          //           SizedBox(width: 40),
          //           RowCard(
          //             projectName: projectsName[2],
          //             imageFilePAth: projectsImages[2],
          //             onTap: () {
          //               js.context.callMethod('open', [projectsLinks[5]]);
          //             },
          //           ),
          //           SizedBox(width: 40),
          //           RowCard(
          //             projectName: projectsName[3],
          //             imageFilePAth: projectsImages[3],
          //             onTap: () {
          //               js.context.callMethod('open', [projectsLinks[3]]);
          //             },
          //           ),
          //         ],
          //       ),

          SizedBox(height: width <= 700 ? 20 : 60),

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
                    return const AllProjects();
                  },
                ));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isHover
                      ? const Color.fromARGB(255, 15, 43, 92)
                      : const Color.fromARGB(255, 15, 43, 92).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                width: width > 700 ? width / 4 : width,
                child: Text(
                  "All Projects",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: width <= 1000 ? 15 : 25,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class RowCard extends StatefulWidget {
//   final onTap;
//   final projectName;
//   final imageFilePAth;
//   RowCard({super.key, this.onTap, this.projectName, this.imageFilePAth});

//   @override
//   State<RowCard> createState() => _RowCardState();
// }

// class _RowCardState extends State<RowCard> {
//   bool isHover = false;

//   _RowCardState();

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return MouseRegion(
//       onEnter: (f) {
//         setState(() {
//           isHover = true;
//         });
//       },
//       onExit: (f) {
//         setState(() {
//           isHover = false;
//         });
//       },
//       child: InkWell(
//         onTap: widget.onTap,
//         child: AnimatedContainer(
//           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//           margin: EdgeInsets.only(top: isHover ? 0 : 10),
//           duration: const Duration(milliseconds: 200),
//           height: width <= 1000
//               ? MediaQuery.of(context).size.height / 3
//               : MediaQuery.of(context).size.height / 3,
//           width: width <= 1000
//               ? MediaQuery.of(context).size.width / 4
//               : MediaQuery.of(context).size.width / 7,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(4.0),
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Colors.white.withOpacity(0.2),
//                 Colors.white.withOpacity(isHover ? 0.30 : 0.20),
//               ],
//             ),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 12, vertical: 10),
//                     height: MediaQuery.of(context).size.height / 6,
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       border: Border.all(color: Colors.white),
//                       borderRadius: BorderRadius.circular(2.0),
//                     ),
//                     child: Align(
//                       alignment: Alignment.center,
//                       child: Image.asset(
//                         widget.imageFilePAth ?? "assets/amazon.png",
//                         height: MediaQuery.of(context).size.height / 7,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   Text(
//                     widget.projectName,
//                     style: TextStyle(
//                         fontFamily: "Patrick",
//                         color: Colors.white,
//                         fontSize: width <= 1000 ? 12 : 16,
//                         fontWeight: FontWeight.w600),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               Align(
//                 alignment: Alignment.bottomLeft,
//                 child: AnimatedContainer(
//                   duration: const Duration(milliseconds: 300),
//                   height: 5,
//                   width: isHover ? 80 : 10,
//                   decoration: const BoxDecoration(
//                       gradient: LinearGradient(
//                     colors: [
//                       Colors.red,
//                       Colors.yellow,
//                       Colors.green,
//                       Colors.pinkAccent,
//                       Colors.purple,
//                       Colors.blue,
//                     ],
//                   )),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class ProjectModel {
  final String projectName;
  final String projectImage;
  final String projectLink;

  ProjectModel({
    required this.projectName,
    required this.projectImage,
    required this.projectLink,
  });
}

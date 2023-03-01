import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Technologies extends StatefulWidget {
  const Technologies({super.key});

  @override
  State<Technologies> createState() => _TechnologiesState();
}

class _TechnologiesState extends State<Technologies> {
  List technologies1 = [
    "assets/Flutter.png",
    "assets/nodejs.png",
    "assets/mongo.png",
    "assets/react.png",
  ];
  List technologies2 = [
    "assets/java.png",
    "assets/javascript.png",
    "assets/firebase.png",
    "assets/express.png",
  ];

  List technologiesName1 = [
    "Flutter",
    "NodeJs",
    "MongoDB",
    "React",
  ];
  List technologiesName2 = [
    "Java",
    "Javascript",
    "Firebase",
    "Express",
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
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
              fontSize: width <= 1000 ? 15 : 30,
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: MediaQuery.of(context).size.height / 6,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset(
                          technologies1[index],
                          height: width <= 1000 ? 30 : 60,
                          width: width <= 1000 ? 30 : 60,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        technologiesName1[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: width <= 1000 ? 08 : 16,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 6,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset(
                          technologies2[index],
                          height: width <= 1000 ? 30 : 60,
                          width: width <= 1000 ? 30 : 60,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        technologiesName2[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: width <= 1000 ? 08 : 16,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          // Container(
          //   alignment: Alignment.topCenter,
          //   color: Colors.amber,
          //   height: MediaQuery.of(context).size.height / 4,
          //   child: GridView.builder(
          //     shrinkWrap: true,
          //     physics: NeverScrollableScrollPhysics(),
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: technologies.length,
          //       mainAxisExtent: 200.0,
          //     ),
          //     itemCount: technologies.length,
          //     itemBuilder: (context, index) {
          //       return Container(
          //         margin: const EdgeInsets.all(8),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Container(
          //               child: Image.asset(
          //                 technologies[index],
          //                 height: width <= 1000 ? 30 : 60,
          //                 width: width <= 1000 ? 30 : 60,
          //               ),
          //             ),
          //             SizedBox(height: 20),
          //             Text(
          //               technologiesName[index],
          //               style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: width <= 1000 ? 08 : 16,
          //               ),
          //             )
          //           ],
          //         ),
          //       );
          //     },
          //   ),
          // )
        ],
      ),
    );
  }
}

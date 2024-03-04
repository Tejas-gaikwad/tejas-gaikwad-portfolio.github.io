import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Technologies extends StatefulWidget {
  const Technologies({super.key});

  @override
  State<Technologies> createState() => _TechnologiesState();
}

class _TechnologiesState extends State<Technologies> {
  List<TechnologyModel> list = [
    TechnologyModel(techImage: "assets/Flutter.png", techName: "Flutter"),
    TechnologyModel(techImage: "assets/nodejs.png", techName: "NodeJS"),
    TechnologyModel(techImage: "assets/mongo.png", techName: "Mongo"),
    TechnologyModel(techImage: "assets/react.png", techName: "React"),
    TechnologyModel(techImage: "assets/java.png", techName: "Java"),
    TechnologyModel(techImage: "assets/javascript.png", techName: "Javascript"),
    TechnologyModel(techImage: "assets/firebase.png", techName: "Firebase"),
    TechnologyModel(techImage: "assets/express.png", techName: "Express"),
  ];

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
                "Technologies I have worked with - ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                  fontSize: width <= 700 ? 15 : 30,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
            // color: Colors.green,
            // height: MediaQuery.of(context).size.height / 3,
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: width <= 700 ? 1.0 : 3.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  // color: Colors.pink,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        list[index].techImage,
                        height: width <= 700 ? 40 : 60,
                        width: width <= 700 ? 40 : 60,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        list[index].techName,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // Container(
          //   height: MediaQuery.of(context).size.height / 6,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     shrinkWrap: true,
          //     itemCount: 4,
          //     itemBuilder: (context, index) {
          //       return Container(
          //         margin:
          //             const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Container(
          //               child: Image.asset(
          //                 technologies1[index],
          //                 height: width <= 1000 ? 60 : 60,
          //                 width: width <= 1000 ? 60 : 60,
          //               ),
          //             ),
          //             SizedBox(height: 20),
          //             Text(
          //               technologiesName1[index],
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
          // ),
          // Container(
          //   height: MediaQuery.of(context).size.height / 6,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     shrinkWrap: true,
          //     itemCount: 4,
          //     itemBuilder: (context, index) {
          //       return Container(
          //         margin:
          //             const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Container(
          //               child: Image.asset(
          //                 technologies2[index],
          //                 height: width <= 1000 ? 30 : 60,
          //                 width: width <= 1000 ? 30 : 60,
          //               ),
          //             ),
          //             SizedBox(height: 20),
          //             Text(
          //               technologiesName2[index],
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
          // ),

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

class TechnologyModel {
  final String techImage;
  final String techName;

  TechnologyModel({required this.techImage, required this.techName});
}

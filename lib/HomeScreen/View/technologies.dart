import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Technologies extends StatefulWidget {
  const Technologies({super.key});

  @override
  State<Technologies> createState() => _TechnologiesState();
}

class _TechnologiesState extends State<Technologies> {
  List technologies = [
    "assets/Flutter.png",
    "assets/nodejs.png",
    "assets/mongo.png",
    "assets/react.png",
    "assets/java.png",
    "assets/javascript.png",
    "assets/firebase.png",
  ];

  List technologiesName = [
    "Flutter",
    "NodeJs",
    "MongoDB",
    "React",
    "Java",
    "Javascript",
    "Firebase",
  ];

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
        ),
        SizedBox(height: 40),
        Container(
          height: MediaQuery.of(context).size.height / 4,
          // color: Colors.amber,
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: technologies.length,
              mainAxisExtent: 200.0,
              // childAspectRatio: 4.0,
            ),
            itemCount: technologies.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(8),
                // height: MediaQuery.of(context).size.height * 8,
                // width: MediaQuery.of(context).size.width,
                // color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // height: 100,
                      // width: 50,
                      // color: Colors.blue,
                      child: Image.asset(
                        technologies[index],
                        height: 60,
                        width: 60,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      technologiesName[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:js' as js;
import '../../Constants/onHover.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
                "My Introduction",
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
          SizedBox(height: width <= 700 ? 20 : 60),
          width > 700
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: childrens(),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: childrens(),
                ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }

  List<Widget> childrens() {
    final width = MediaQuery.of(context).size.width;
    return ([
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width <= 700 ? 25 : 10),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Image.asset(
              "assets/tejas-flutter.jpg",
              height: width <= 700
                  ? MediaQuery.of(context).size.height / 4
                  : MediaQuery.of(context).size.height / 2,
              width: width <= 700
                  ? MediaQuery.of(context).size.width
                  : MediaQuery.of(context).size.width / 4,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      const SizedBox(height: 25),
      Container(
        margin: EdgeInsets.symmetric(horizontal: width < 700 ? 25 : 10),
        width: width < 700 ? width : MediaQuery.of(context).size.width / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hey there! I'm Tejas Gaikwad, a graduate from Pune University, fueled by a fervent passion for software development. With a knack for crafting apps from the ground up in startup settings, I thrive on tackling real-world challenges through code. You'll often find me immersed in technical and non-technical events and competitions, driven by a curiosity that spans both past and future - from delving into history to envisioning tomorrow. And when I'm not coding away, you'll catch me cruising on my motorcycle, soaking in the thrill as my ultimate stress buster.",
              textAlign: width < 700 ? TextAlign.center : TextAlign.start,
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.white,
                  fontSize: width <= 1000 ? 15 : 18,
                  letterSpacing: 3.0),
            ),
            SizedBox(height: width <= 700 ? 15 : 30),
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
              // color1: Colors.white.withOpacity(0.4),
              // color2: Colors.white,
              // onTap: () {
              //      js.context.callMethod('open', [
              //     'https://www.linkedin.com/in/tejas-gaikwad-216b3a19a/'
              //   ]);
              // },
              child: InkWell(
                onTap: () {
                  js.context.callMethod(
                      'open', ['mailto:tejasgaikwad0504@gmail.com']);
                },
                child: Text(
                  "Email :- tejasgaikwad0504@gmail.com",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: isHover
                          ? Colors.white
                          : Colors.white.withOpacity(0.4),
                      // fontSize: width <= 1000 ? 15 : 30,
                      letterSpacing: 3.0),
                ),
              ),
            )
          ],
        ),
      )
    ]);
  }
}

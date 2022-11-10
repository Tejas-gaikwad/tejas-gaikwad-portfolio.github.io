import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiddleCircularRectangleSection extends StatefulWidget {
  const MiddleCircularRectangleSection({super.key});

  @override
  State<MiddleCircularRectangleSection> createState() =>
      _MiddleCircularRectangleSectionState();
}

class _MiddleCircularRectangleSectionState
    extends State<MiddleCircularRectangleSection> {
  bool one = true;
  bool two = false; //////////Make it observable afterwards

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Color(0XFF111010),
          boxShadow: const [
            BoxShadow(
                color: Colors.greenAccent,
                offset: Offset(0.0, 0.0),
                blurRadius: 30.0,
                spreadRadius: 10.0)
          ]),
      width: MediaQuery.of(context).size.width * 0.22,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              if (one == true) {
                setState(() {
                  one = false;
                  two = true;
                });
              } else if (one == false) {
                setState(() {
                  one = true;
                  two = false;
                });
              }
            },
            child: AnimatedContainer(
              alignment: Alignment.center,
              duration: Duration(milliseconds: 300),
              width: MediaQuery.of(context).size.width * 0.2 / 2,
              height: MediaQuery.of(context).size.height * 0.04,
              margin: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: one == true ? Color(0XFF343439) : Colors.transparent,
                  borderRadius: BorderRadius.circular(25.0)),
              child: Text(
                "One",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (two == true) {
                setState(() {
                  one = true;
                  two = false;
                });
              } else if (two == false) {
                setState(() {
                  one = false;
                  two = true;
                });
              }
            },
            child: AnimatedContainer(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.04,
              duration: Duration(milliseconds: 300),
              width: MediaQuery.of(context).size.width * 0.2 / 2,
              margin: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: one == false ? Color(0XFF343439) : Colors.transparent,
                  borderRadius: BorderRadius.circular(25.0)),
              child: Text(
                "Two",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

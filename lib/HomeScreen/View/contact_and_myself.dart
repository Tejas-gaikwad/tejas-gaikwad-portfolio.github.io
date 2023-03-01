import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Text(
          "My Introduction",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Pacifico",
            color: Colors.white60,
            fontWeight: FontWeight.bold,
            fontSize: width <= 1000 ? 15 : 30,
          ),
        ),
        SizedBox(height: 80),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                // borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  "assets/tejas-flutter.jpg",
                  height: width <= 1000
                      ? MediaQuery.of(context).size.height / 3
                      : MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 4,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello, My name is Tejas Gaikwad. I am a 2022 graduate from pune university. I am a passionate Software developer.I have an experience of creating apps from scratch in startup environments. I try to solve real world problems using coding. I have been participating in many events and competitions related to technical and non-technical. I am curious about past and future, I have been curious about history and predicting the future. Motorcycle riding is my stress buster.",
                    style: TextStyle(
                        fontFamily: "Patrick",
                        color: Colors.white,
                        fontSize: width <= 1000 ? 15 : 30,
                        letterSpacing: 3.0),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "You can contact me by email :- tejasg4646@gmail.com",
                    style: TextStyle(
                        fontFamily: "Patrick",
                        color: Colors.white.withOpacity(0.4),
                        fontSize: width <= 1000 ? 15 : 30,
                        letterSpacing: 3.0),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

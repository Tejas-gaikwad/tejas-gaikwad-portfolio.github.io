import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'HomeScreen/View/glassmorphism.dart';
import 'HomeScreen/View/homeScreen.dart';
import 'HomeScreen/View/movingCircle.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCEJWWcMCMIUis0ovUTyHSBIYdgM0OjUac",
        authDomain: "tejas-portfolio-ee939.firebaseapp.com",
        projectId: "tejas-portfolio-ee939",
        storageBucket: "tejas-portfolio-ee939.appspot.com",
        messagingSenderId: "113666434681",
        appId: "1:113666434681:web:94e38466100f3abe8056a8"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tejas's portfolio website",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    firstFunction();
  }

  firstFunction() async {
    await Future.delayed(const Duration(seconds: 2));
    await Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
      builder: (context) {
        return const HomeScreen();
      },
    ), (route) => false);
  }

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height * 3.8,
          child: const Stack(
            children: [
              // Positioned(
              //     left: 0,
              //     top: 10,
              //     child: MovingCircle(
              //       color1: Color(0XFF000AFF),
              //       color2: Color(0XFFFF00D6),
              //     )),
              // Positioned(
              //     left: 500,
              //     top: 1100,
              //     child: MovingCircle(
              //       color1: Color.fromARGB(255, 132, 183, 14),
              //       color2: Color.fromARGB(255, 238, 5, 133),
              //     )),
              // Positioned(
              //     right: 10,
              //     top: 150,
              //     child: MovingCircle(
              //       color1: Color(0XFFC8F029),
              //       color2: Color(0XFFCE5700),
              //     )),
              GlassMorphismWidget(),
              Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

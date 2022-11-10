import 'dart:ui';

import 'package:flutter/cupertino.dart';

class GlassMorphismWidget extends StatelessWidget {
  const GlassMorphismWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // color: Colors.white,
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 120.0,
              sigmaY: 120.0,
            ),
            child: Container(
              decoration: const BoxDecoration(
                  // border: Border.all(color: Colors.white, width: 1.5),
                  // borderRadius: BorderRadius.circular(15.0),
                  // gradient: LinearGradient(
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  //   // colors: [
                  //   //   Colors.white.withOpacity(0.3),
                  //   //   Colors.white.withOpacity(0.05),
                  //   // ],
                  // ),
                  ),
            ),
          ),

          // Container(
          //   child: FrostedGla,
          // )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class animation extends StatefulWidget {
  static const String id = "animation";
  const animation({super.key});

  @override
  State<animation> createState() => _animationState();
}

class _animationState extends State<animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000c40).withOpacity(0.75),
        iconTheme: IconThemeData(color: Colors.white70),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 150,
              width: 280,
              decoration: BoxDecoration(
                color: Color(0xff000c40).withOpacity(0.75),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Text(
                    "I am ",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        "Developer",
                        textStyle: TextStyle(
                          fontSize: 40,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: Duration(milliseconds: 50),
                      ),
                      TyperAnimatedText(
                        "Student",
                        textStyle: TextStyle(
                          fontSize: 40,
                          color: Colors.tealAccent,
                          fontWeight: FontWeight.bold,
                        ),

                        speed: Duration(milliseconds: 50),
                      ),
                    ],
                    repeatForever: true,
                    isRepeatingAnimation: true,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: 280,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(29),
            ),
            child: Row(
              children: [
                Text(
                  "I am",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText(
                      "Developer",
                      duration: Duration(milliseconds: 500),
                      textStyle: TextStyle(
                        fontSize: 40,
                        color: Colors.cyan,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RotateAnimatedText(
                      "Student",
                      textStyle: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent,
                      ),
                      duration: Duration(milliseconds: 500),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  repeatForever: true,
                  displayFullTextOnTap: true,
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: 280,
            height: 150,
            decoration: BoxDecoration(
              color: Color(0xffad5389),
              borderRadius: BorderRadius.circular(29),
            ),
            child: Row(
              children: [
                Text(
                  "I am",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      " Student",
                      speed: Duration(milliseconds: 500),
                      textStyle: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      colors: [
                        Color(0xff3c1053),
                        Color(0xffa8c0ff),
                        Color(0xff3f2b96),
                      ],
                    ),
                    ColorizeAnimatedText(
                      " Developer",speed: Duration(milliseconds: 500),
                      textStyle: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      colors: [Color(0xff333333),Color(0xffdd1818),Color(0xffc06c84)],
                    ),
                  ],
                  isRepeatingAnimation: true,
                  repeatForever: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

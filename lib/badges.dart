import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mycalculator/fontawesome.dart';

class homescreen extends StatefulWidget {
  static const String id = "homescreen";
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Badge(
              offset: Offset(8, -8),
              label: Text(
                "3",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              backgroundColor: Colors.red,
              child: FaIcon(
                FontAwesomeIcons.shoppingCart,
                size: 20,
                color: Colors.white70,
              ),
            ),
            SizedBox(width: 10),
          ],
          title: Text(
            "Pub Dev",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffC9B896), Color(0xff8B5A3C)],
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  border: Border.all(style: BorderStyle.solid),
                  // borderRadius: BorderRadius.circular(30),
                  shape: BoxShape.circle,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Badge(
                      label: Text("5", style: TextStyle(fontSize: 10)),
                      offset: Offset(8, -8),
                      backgroundColor: Colors.teal,
                      child: FaIcon(FontAwesomeIcons.gear),
                      //we use fontawesome and badges packages together for info i tell you that badge is a main widget and fontawesome icon is its child so and for maintain label on icon we use badge property named offset best is  offset(8,-8)
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, fontawesome.id);
              },
              child: Text("Click for Next topic"),
            ),
          ],
        ),
      ),
    );
  }
}

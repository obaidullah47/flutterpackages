import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mycalculator/readmore.dart';

class fontawesome extends StatefulWidget {
  static const String id = "Fonts";
  const fontawesome({super.key});

  @override
  State<fontawesome> createState() => _fontawesomeState();
}

class _fontawesomeState extends State<fontawesome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pub Dev",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 240,
            width: 240,

            decoration: BoxDecoration(
              color: Colors.black45,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Badge(
                label: Text("9+", style: TextStyle(color: Colors.black45)),
                backgroundColor: Colors.white70,
                offset: Offset(8, -8),
                child: FaIcon(
                  FontAwesomeIcons.shopify,
                  size: 30,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          TextButton(onPressed: () {
            Navigator.pushNamed(context, read.id);
          }, child: Text("Tap here for Next")),
        ],
      ),
    );
  }
}

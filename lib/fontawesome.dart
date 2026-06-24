import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        children: [Container(child: FaIcon(FontAwesomeIcons.shopify))],
      ),
    );
  }
}

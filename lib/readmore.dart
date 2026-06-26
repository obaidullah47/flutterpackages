import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mycalculator/animatedtext.dart';
import 'package:readmore/readmore.dart';

class read extends StatefulWidget {
  static const String id = "readmore";
  const read({super.key});

  @override
  State<read> createState() => _readState();
}

class _readState extends State<read> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ReadMore Text",
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
        children: [
          Center(
            child: Container(
              width: 250,
              height: 450,
              child: ReadMoreText(
                "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library in London, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset's Body Type sheets. It has survived not only many decades, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised thanks to these sheets and more recently with desktop publishing software like Aldus PageMaker and Microsoft Word including versions of Lorem Ipsum.",
                trimMode: TrimMode.Line,
                trimLines: 2,
                trimCollapsedText: "Show   More ",
                moreStyle: TextStyle(color: Colors.redAccent),
                colorClickableText: Colors.teal,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, animation.id);
            },
            child: Text("Tap here for next"),
          ),
        ],
      ),
    );
  }
}

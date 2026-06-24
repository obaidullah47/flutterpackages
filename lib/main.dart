import 'package:flutter/material.dart';
import 'package:mycalculator/badges.dart';
import 'package:mycalculator/fontawesome.dart';
import 'package:mycalculator/readmore.dart';

void main() {
  runApp(mycal());
}

class mycal extends StatelessWidget {
  const mycal({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: homescreen.id,
      routes: {homescreen.id: (context) => homescreen(),
        fontawesome.id :(context)=> fontawesome(),
        read.id : (context)=> read(),
      },

    );
  }
}

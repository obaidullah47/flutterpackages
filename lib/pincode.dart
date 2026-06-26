import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class pincode extends StatefulWidget {
  static const String id = "pincode";
  const pincode({super.key});

  @override
  State<pincode> createState() => _pincodeState();
}

class _pincodeState extends State<pincode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PINCODE ",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff3c3b3f), Color(0xff605c3c)],
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(
            child: MaterialPinField(
              length: 6,
              theme: MaterialPinTheme(
                shape: MaterialPinShape.outlined,
                cellSize: Size(45, 55),
                showCursor: true,
                spacing: 8,
                borderRadius: BorderRadius.circular(10),
                focusedBorderColor: Colors.brown,
                errorBorderColor: Colors.red,
                entryAnimation: MaterialPinAnimation.scale,
                enableErrorShake: true,
                obscuringCharacter: "#",
              ),
              keyboardType: TextInputType.numberWithOptions(),
obscureText: true,
            ),
          ),
        ],
      ),
    );
  }
}

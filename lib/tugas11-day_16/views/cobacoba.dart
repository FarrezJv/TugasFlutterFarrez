import 'package:flutter/material.dart';

class CobaCoba1 extends StatefulWidget {
  const CobaCoba1({super.key});

  @override
  State<CobaCoba1> createState() => _CobaCoba1State();
}

class _CobaCoba1State extends State<CobaCoba1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(children: [buildBackground(), buildLayer()]));
  }

  SizedBox height(double height) => SizedBox(height: height);
  SizedBox width(double width) => SizedBox(width: width);

  Widget buildTitle(String text) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }

  SafeArea buildLayer() {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildTitle("COBA-COBA"),
          height(15),

          ElevatedButton(
            onPressed: () {
              // Action when button is pressed
            },
            child: Text("Press Me"),
          ),
        ],
      ),
    );
  }

  Container buildBackground() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Hoja de tanjiro _3.jfif"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

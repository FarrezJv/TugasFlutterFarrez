import 'package:flutter/material.dart';

class Switch1 extends StatefulWidget {
  const Switch1({super.key});

  @override
  State<Switch1> createState() => _Switch1State();
}

class _Switch1State extends State<Switch1> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: isDarkMode == true ? Colors.black : Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Mode Gelap",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isDarkMode == true ? Colors.white : Colors.black,
                  ),
                ),
                Switch(
                  activeThumbImage: AssetImage("assets/images/true2.webp"),
                  inactiveThumbImage: AssetImage("assets/images/false1.webp"),
                  activeColor: Colors.greenAccent,
                  value: isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),
                Text(
                  isDarkMode == true ? "Hidup" : "Tidak Hidup",
                  style: TextStyle(
                    color: isDarkMode == true ? Colors.white : Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Dashboard1 extends StatefulWidget {
  const Dashboard1({super.key});
  static const id = "?dashboard";
  @override
  State<Dashboard1> createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [Text("123")]));
  }
}

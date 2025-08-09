import 'package:flutter/material.dart';
import 'package:ppkd_b_3/extension/navigation.dart';
import 'package:ppkd_b_3/tugas7flutter/Switch.dart';
import 'package:ppkd_b_3/tugas7flutter/checkbox.dart';
import 'package:ppkd_b_3/tugas7flutter/datepicker.dart';
import 'package:ppkd_b_3/tugas7flutter/dropdown.dart';
import 'package:ppkd_b_3/tugas7flutter/timepicker.dart';

class Tugas7flutter extends StatefulWidget {
  const Tugas7flutter({super.key});
  static const id = "/halamanutama";

  @override
  State<Tugas7flutter> createState() => _Tugas7flutterState();
}

class _Tugas7flutterState extends State<Tugas7flutter> {
  int _selectedIndexDrawer = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    checkboxx(),
    Switch1(),
    Dropdown1(),
    datepicker1(),
    timepicker1(),
    // StartWidget(appBar: false),
    // Day6(),
    // InputWidget(),
  ];
  void onItemTap(int index) {
    setState(() {
      _selectedIndexDrawer = index;
    });
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: _widgetOptions[_selectedIndexDrawer]),
      // appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("CheckBox"),
              onTap: () {
                onItemTap(0);
              },
            ),

            ListTile(
              title: Text("Switch"),
              onTap: () {
                onItemTap(1);
              },
            ),
            ListTile(
              title: Text("Dropdown"),
              onTap: () {
                onItemTap(2);
              },
            ),
            ListTile(
              title: Text("DatePicker"),
              onTap: () {
                onItemTap(3);
              },
            ),
            ListTile(
              title: Text("TimePicker"),
              onTap: () {
                onItemTap(4);
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ppkd_b_3/extension/navigation.dart';
import 'package:ppkd_b_3/tugas7flutter/Beranda.dart';
import 'package:ppkd_b_3/tugas7flutter/Switch.dart';
import 'package:ppkd_b_3/tugas7flutter/checkbox.dart';
import 'package:ppkd_b_3/tugas7flutter/datepicker.dart';
import 'package:ppkd_b_3/tugas7flutter/dropdown.dart';
import 'package:ppkd_b_3/tugas7flutter/timepicker.dart';
import 'package:ppkd_b_3/tugas9flutter/List1.dart';
import 'package:ppkd_b_3/tugas9flutter/ListOfMap.dart';
import 'package:ppkd_b_3/tugas9flutter/model.dart';

class Tugas7flutter extends StatefulWidget {
  const Tugas7flutter({super.key});
  static const id = "/halamanutama";

  @override
  State<Tugas7flutter> createState() => _Tugas7flutterState();
}

class _Tugas7flutterState extends State<Tugas7flutter> {
  int _selectedIndexDrawer = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Beranda(),
    checkboxx(),
    Switch1(),
    Dropdown1(),
    datepicker1(),
    timepicker1(),
    List1(),
    Listofmap(),
    Model12(),
    // TentangAplikasi(),
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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Text(
                "TUGAS 7 FLUTTER",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Beranda"),
              onTap: () {
                onItemTap(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.check_box),
              title: Text("CheckBox"),
              onTap: () {
                onItemTap(1);
              },
            ),

            ListTile(
              leading: Icon(Icons.toggle_on),
              title: Text("Switch"),
              onTap: () {
                onItemTap(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_drop_down_circle),
              title: Text("Dropdown"),
              onTap: () {
                onItemTap(3);
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text("DatePicker"),
              onTap: () {
                onItemTap(4);
              },
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text("TimePicker"),
              onTap: () {
                onItemTap(5);
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text("List"),
              onTap: () {
                onItemTap(6);
              },
            ),
            ListTile(
              leading: Icon(Icons.list_alt),
              title: Text("List Of Map"),
              onTap: () {
                onItemTap(7);
              },
            ),
            ListTile(
              leading: Icon(Icons.model_training),
              title: Text("Models"),
              onTap: () {
                onItemTap(8);
              },
            ),
          ],
        ),
      ),
    );
  }
}

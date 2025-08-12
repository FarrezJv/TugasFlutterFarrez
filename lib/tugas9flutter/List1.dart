import 'package:flutter/material.dart';

class List1 extends StatefulWidget {
  const List1({super.key});

  @override
  State<List1> createState() => _List1State();
}

class _List1State extends State<List1> {
  final List<String> namaPeralatanDapur = [
    "Spatula",
    "Panci",
    "Piring",
    "Mangkok",
    "Sendok",
    "Garpu",
    "Sumpit",
    "Pisau",
    "alenan",
    "Parutan",
  ];
  // final List<Map<String, dynamic>> icon = [
  //   {"nama": "Spatula", "Icon": Icons.kitchen},
  //   {"nama": "Panci", "Icon": Icons.set_meal},
  //   {"nama": "Piring", "Icon": Icons.restaurant},
  //   {"nama": "Mangkok", "Icon": Icons.rice_bowl},
  //   {"nama": "Sendok", "Icon": Icons.restaurant_menu},
  //   {"nama": "Garpu", "Icon": Icons.dining},
  //   {"nama": "Sumpit", "Icon": Icons.ramen_dining},
  //   {"nama": "Pisau", "Icon": Icons.content_cut},
  //   {"nama": "Talenan", "Icon": Icons.square},
  //   {"nama": "Parutan", "Icon": Icons.grain},
  // ];
  // final List<Map<String, dynamic>> produk = [
  //   {"nama": "Baju", "price": 50000, "warna": Colors.blue},
  //   {"nama": "Celana", "price": 60000, "warna": Colors.red},
  //   {"nama": "Topi", "price": 70000, "warna": Colors.yellow},
  //   {"nama": "Sepatu", "price": 80000, "warna": Colors.green},
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        itemCount: namaPeralatanDapur.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(namaPeralatanDapur[index]),
            leading: CircleAvatar(child: Text("${index + 1}")),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Listofmap extends StatefulWidget {
  const Listofmap({super.key});

  @override
  State<Listofmap> createState() => _ListofmapState();
}

class _ListofmapState extends State<Listofmap> {
  final List<Map<String, dynamic>> icon = [
    {"nama": "Spatula", "Icon": Icons.kitchen},
    {"nama": "Panci", "Icon": Icons.set_meal},
    {"nama": "Piring", "Icon": Icons.restaurant},
    {"nama": "Mangkok", "Icon": Icons.rice_bowl},
    {"nama": "Sendok", "Icon": Icons.restaurant_menu},
    {"nama": "Garpu", "Icon": Icons.dining},
    {"nama": "Sumpit", "Icon": Icons.ramen_dining},
    {"nama": "Pisau", "Icon": Icons.content_cut},
    {"nama": "Talenan", "Icon": Icons.square},
    {"nama": "Parutan", "Icon": Icons.grain},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),

        // shrinkWrap: true,
        itemCount: icon.length,
        itemBuilder: (BuildContext context, int index) {
          final dataProduk = icon[index];
          return ListTile(
            title: Text(dataProduk["nama"]),
            // subtitle: Text(dataProduk["price"].toString()),
            trailing: Icon(dataProduk["Icon"]),
            // trailing: CircleAvatar(backgroundColor: dataProduk["warna"]),
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Text("${index + 1}"),
            ),
          );
        },
      ),
    );
  }
}

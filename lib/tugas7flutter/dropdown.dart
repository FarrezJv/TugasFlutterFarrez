import 'package:flutter/material.dart';

class Dropdown1 extends StatefulWidget {
  const Dropdown1({super.key});

  @override
  State<Dropdown1> createState() => _Dropdown1State();
}

class _Dropdown1State extends State<Dropdown1> {
  String? dropdowndoang;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            DropdownButton(
              value: dropdowndoang,
              hint: Text("Pilih Kategori Produk"),
              items: ["Elektronik", "Pakaian", "Makanan", "Lainnya"].map((
                String value,
              ) {
                return DropdownMenuItem(value: value, child: Text(value));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  // Text("Anda memilih kategori: $value");
                });
                dropdowndoang = value;
              },
            ),
            SizedBox(height: 15),
            Text(
              dropdowndoang == null
                  ? "Anda Belum Memilih"
                  : "Anda Memilih $dropdowndoang",
            ),
          ],
        ),
      ),
    );
  }
}

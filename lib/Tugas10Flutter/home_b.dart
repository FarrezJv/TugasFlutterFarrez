import 'package:flutter/material.dart';

class Day15HomeB extends StatelessWidget {
  const Day15HomeB({
    super.key,
    required this.email,
    this.phone,
    required this.name,
    this.city,
  });
  final String email;
  final String? phone;
  final String name;
  final String? city;
  // final String validator = "Email Tidak Boleh Kosong";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(
            //   email,
            //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            // ),
            // Text(
            //   phone ?? "Tidak ada nomor telepon",
            //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            // ),
            // Text(
            //   name,
            //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            // ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: Text(
                "Terima Kasih $name dari $city telah mendaftarkan diri anda",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            // Text(
            //   "Email: $email",
            //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            // ),
            // Text(
            //   "Telepon: ${phone ?? "Tidak ada nomor telepon"}",
            //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            // ),
            // Text(
            //   "Kota Domisili: ${city ?? "Tidak ada kota domisili"}",
            //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            // ),
          ],
        ),
      ),
    );
  }
}

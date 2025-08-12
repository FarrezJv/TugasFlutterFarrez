import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas7flutter/tugas7flutter.dart';

class TentangAplikasi extends StatelessWidget {
  const TentangAplikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tentang Aplikasi',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      drawer: const Tugas7flutter(),
      body: 
          // Padding(
          //   padding: const EdgeInsets.only(
          //     top: 35,
          //     bottom: 20,
          //     left: 20,
          //     right: 20,
          //   ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Hoja de tanjiro _3.jfif"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo Aplikasi atau Gambar
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                    'assets/images/kiri.jfif',
                  ), // Ganti dengan gambar logo
                ),
                SizedBox(height: 20),

                // Deskripsi Aplikasi
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Text(
                    "Aplikasi ini dibuat untuk membantu pengguna dalam mengatur berbagai input dengan menggunakan Flutter. Aplikasi ini mempunyai sistem navigasi yang memudahkan pengguna.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),

                // Nama Pembuat & Versi
                Text(
                  "Nama Pembuat: Farrez Juan Verterry",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text("Versi: 1.0.0", style: TextStyle(fontSize: 14)),
                SizedBox(height: 20),

                // Tombol untuk menghubungi atau membuka website
                ElevatedButton(
                  onPressed: () {
                    // Misalnya membuka link atau mengirim email
                  },
                  child: Text(
                    "Hubungi Developer",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),

                // Social Media or Contact Links
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        // Navigasi ke media sosial atau email
                      },
                      icon: Icon(Icons.facebook),
                    ),
                    IconButton(
                      onPressed: () {
                        // Navigasi ke media sosial atau email
                      },
                      icon: Icon(Icons.email),
                    ),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}

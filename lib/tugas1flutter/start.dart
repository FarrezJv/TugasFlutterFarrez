import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROFIL SAYA", style: TextStyle(fontFamily: "Bitcount")),
        actions: [Icon(Icons.favorite, color: Colors.red)],
        backgroundColor: Colors.greenAccent,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text(
            "Nama : Farrez Juan Verterry",
            style: TextStyle(
              fontSize: 30,
              color: Colors.greenAccent,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, color: Colors.red),
              Text("Alamat : Sawah Besar, Jakarta Pusat"),
            ],
          ),
          SizedBox(height: 8),

          Text(
            "Hobi saya baca buku",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
        ],
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Log Aktifitas"),
            Text("Beranda"),
            Text("Pengaturan"),
            Text("Akses"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("Sign in"), Text("log out")],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}

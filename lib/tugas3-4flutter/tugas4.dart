import 'package:flutter/material.dart';

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TUGAS 4"),
      backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Container(
               color: const Color.fromARGB(255, 255, 232, 164),
              child: TextField(
                autocorrect: true,
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // fillColor: Colors.blue,
                  // filled: true,
                  prefixIcon: Icon(Icons.person,color: Colors.blue, size: 35),
                  hint: Text("Masukkan Nama Anda"),
                  labelText: ("Nama"),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Container(
              color: const Color.fromARGB(255, 255, 232, 164),
              child: TextField(
                autocorrect: true,
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // fillColor: Colors.blue,
                  // filled: true,
                  prefixIcon: Icon(Icons.email,color: const Color.fromARGB(255, 255, 144, 40), size: 35),
                  hint: Text("Masukkan Alamat Email Anda"),
                  labelText: ("Email"),
                ),
              ),
            ),
          ),
           SizedBox(height: 5),
            Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Container(

              color: const Color.fromARGB(255, 255, 232, 164),
              child: TextField(
                autocorrect: true,
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // fillColor: Colors.blue,
                  // filled: true,
                  prefixIcon: Icon(Icons.phone,color: Colors.red, size: 35),
                  hint: Text("Nomor Handphone Anda"),
                  labelText: ("Nomor Handphone"),
                
                ),
              ),
            ),
          ),
           SizedBox(height: 5),
            Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Container(
              color: const Color.fromARGB(255, 255, 232, 164),
              child: TextField(
                autocorrect: true,
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // fillColor: Colors.blue,
                  // filled: true,
                  prefixIcon: Icon(Icons.rocket,color: const Color.fromARGB(255, 0, 0, 0), size: 35),
                  hint: Text("Deskripsikan Diri Anda"),
                  labelText: ("Deskripsi"),
                ),
              ),
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              title: Text("NASI GORENG"),
              leading: Icon(Icons.restaurant),
              subtitle: Text("Rp.40.000"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              title: Text("BURGER"),
              leading: Icon(Icons.fastfood),
              subtitle: Text("Rp.40.000"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              title: Text("KOPI"),
              leading: Icon(Icons.local_cafe),
              subtitle: Text("Rp.40.000"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              title: Text("BUBUR AYAM"),
              leading: Icon(Icons.breakfast_dining),
              subtitle: Text("Rp.40.000"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              title: Text("MIE AYAM"),
              leading: Icon(Icons.ramen_dining),
              subtitle: Text("Rp.40.000"),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          children: [  
          ListTile(
            title: Text("Beranda"),
            leading: Icon(Icons.home),
          ),
           ListTile(
            title: Text("Kontak"),
            leading: Icon(Icons.person_add),
          ),
           ListTile(
            title: Text("Notifikasi"),
            leading: Icon(Icons.notification_add),
          ),
           ListTile(
            title: Text("Pesan"),
            leading: Icon(Icons.mail),
          ),
           ListTile(
            title: Text("Pengaturan"),
            leading: Icon(Icons.settings),
          ),
          ],
        )
        
        
      ),

    );
  }
}
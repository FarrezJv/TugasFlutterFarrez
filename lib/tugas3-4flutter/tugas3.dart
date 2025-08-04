import 'package:flutter/material.dart';

class Tugas3 extends StatelessWidget {
  const Tugas3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TUGAS 3"),
        backgroundColor: Colors.blue ,
      ),
      body: Column(
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

          Container(
            padding: EdgeInsets.all(10),
             child: Padding(padding: EdgeInsetsGeometry.all(0),
             child: GridView.count(
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              crossAxisCount: 3,
              shrinkWrap: true,
              children: [
                Stack(
                  children: [
                    Container(
                      height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 0, 0)),
                    ),
                    Center(child: Text("Merah", style: TextStyle(color: Colors.white)))
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height:double.infinity,
                    width:double.infinity,
                    decoration: BoxDecoration(color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                    Center(child: Text("Hitam",style: TextStyle(color: Colors.white),),)
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(color: const Color.fromARGB(255, 38, 0, 255)),
                    ),
                    Center(child: Text("Biru", style: TextStyle(color: Colors.white)),)
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.pink),
                    ),
                    Center(child: Text("Pink",style: TextStyle(color: Colors.white)),)
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.amber),
                    ),
                    Center(child: Text("Kuning", style: TextStyle(color: Colors.white),),)
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.deepOrange),
                    ),
                    Center(child: Text("Orange", style: TextStyle(color: Colors.white)),)
                  
                  ],
                ),
              ],
              ),
              
              
             ),
          )
          
        ],
      ),
    );
  }
}
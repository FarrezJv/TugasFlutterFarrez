import 'package:flutter/material.dart';

class Tugas5 extends StatefulWidget {
  const Tugas5({super.key});

  @override
  State<Tugas5> createState() => _Tugas5State();
}

class _Tugas5State extends State<Tugas5> {
  bool showName = false;
  bool showLiked = false;
  bool showDeskripsi = false;
  int counter = 0;
  bool showBoxtext = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BUTTON"), backgroundColor: Colors.blue),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Text("Nambah berapa porsi $counter");
          setState(() {
            counter++;
            //  print("Nambah berapa porsi $counter");
          });
          // print("Nambah berapa porsi $counter");
        },
        child: Icon(Icons.person_add),
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    const Color.fromARGB(255, 162, 196, 255),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    showName = !showName;
                  });
                },
                child: Text(
                  "Tampilkan Nama",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          if (showName) Text("Nama saya Farrez Juan Verterry"),

          SizedBox(height: 20),
          IconButton(
            onPressed: () {
              setState(() {
                showLiked = !showLiked;
              });
            },
            icon: Icon(Icons.favorite),
            color: showLiked ? Colors.red : Colors.grey,
          ),
          if (showLiked) Text("Disukai"),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              setState(() {
                showDeskripsi = !showDeskripsi;
              });
            },
            child: Text("Lihat Selengkapnya"),
          ),
          if (showDeskripsi)
            Text(
              "Bahan dasar buat gado - gado = kentang, kukus, kupas, potong-potong. tahu putih, tempe",
            ),
          Text("Nambah berapa porsi $counter"),

          SizedBox(height: 20),
          InkWell(
            onTap: () {
              print("Kotak Disentuh");
              setState(() {
                showBoxtext = !showBoxtext;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                color: Colors.blueAccent,
                width: 250,
                height: 75,
                alignment: Alignment.center,
                // child: Image.asset("assets/images/kanan.jfif"),
                child: showBoxtext
                    ? Text(
                        "INKWELLL",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    : SizedBox.shrink(),
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              print("Ditekan sekali");
            },
            onDoubleTap: () {
              print("Ditekan duakali");
            },
            onLongPress: () {
              print("Tahan lama");
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                color: Colors.blue,
                height: 48,
                width: double.infinity,
                child: Center(child: Text("Tekan Aku")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas9flutter/models/produk_model.dart';

class Model12 extends StatefulWidget {
  const Model12({super.key});

  @override
  State<Model12> createState() => _Model12State();
}

class _Model12State extends State<Model12> {
  final List<ProdukModel> produkModel = [
    ProdukModel(nama: "Spatula", price: "Rp.50.000", icon: Icons.kitchen),
    ProdukModel(nama: "Panci", price: "Rp.50.000", icon: Icons.set_meal),
    ProdukModel(nama: "Piring", price: "Rp.60.000", icon: Icons.restaurant),
    ProdukModel(nama: "Mangkok", price: "Rp.70.000", icon: Icons.rice_bowl),
    ProdukModel(
      nama: "Sendok",
      price: "Rp.80.000",
      icon: Icons.restaurant_menu,
    ),
    ProdukModel(nama: "Garpu", price: "Rp.80.000", icon: Icons.ramen_dining),
    ProdukModel(nama: "Sumpit", price: "Rp.80.000", icon: Icons.content_cut),
    ProdukModel(nama: "Pisau", price: "Rp.80.000", icon: Icons.square),
    ProdukModel(
      nama: "Talenan",
      price: "Rp.80.000",
      icon: Icons.grain,
      // warna: Colors.indigoAccent,
    ),
    ProdukModel(
      nama: "Parutan",
      price: "Rp.80.000",
      icon: Icons.abc,
      // warna: Colors.indigoAccent,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: produkModel.length,
          itemBuilder: (BuildContext context, int index) {
            final dataProdukModel = produkModel[index];
            return Card(
              child: ListTile(
                title: Text(dataProdukModel.nama),
                subtitle: Text(dataProdukModel.price.toString()),
                // trailing: CircleAvatar(backgroundColor: dataProdukModel.warna),
                // leading: CircleAvatar(
                //   backgroundColor: Colors.redAccent,
                //   child: Text("${index + 1}"),
                // ),
                trailing: Icon(dataProdukModel.icon),
              ),
            );
            // ListTile(
            //   title: Text(dataProdukModel.nama),
            //   subtitle: Text(dataProdukModel.price.toString()),
            //   // trailing: CircleAvatar(backgroundColor: dataProdukModel.warna),
            //   // leading: CircleAvatar(
            //   //   backgroundColor: Colors.redAccent,
            //   //   child: Text("${index + 1}"),
            //   // ),
            //   trailing: Icon(dataProdukModel.icon),
            // );
          },
        ),
      ),
    );
  }
}

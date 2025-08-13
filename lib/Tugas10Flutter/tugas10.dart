import 'package:flutter/material.dart';
import 'package:ppkd_b_3/Tugas10Flutter/home_b.dart';
import 'package:ppkd_b_3/Tugas10Flutter/textform.dart';
import 'package:ppkd_b_3/extension/navigation.dart';
// import 'package:ppkd_b_3/day_15/home_b.dart';
// import 'package:ppkd_b_3/day_15/textform.dart';

class Tugas10 extends StatefulWidget {
  const Tugas10({super.key});

  @override
  State<Tugas10> createState() => _Tugas10State();
}

class _Tugas10State extends State<Tugas10> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: Column(
              spacing: 12,
              children: [
                Row(children: [Text('Nama Lengkap')]),

                TextFormConst(
                  hintText: "Masukkan Nama",
                  controller: nameController,

                  onChanged: (p0) {
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Nama Tidak Boleh Kosong";
                    }
                    return null;
                  },
                ),

                Row(children: [Text('Email')]),

                TextFormConst(
                  hintText: "Masukkan Email",
                  controller: emailController,
                  onChanged: (p0) {
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email Tidak Boleh Kosong";
                    }
                    if (!value.contains("@gmail.com")) {
                      return "Format email tidak valid";
                    }
                    return null;
                  },
                ),
                Row(children: [Text('No. Telepon')]),
                TextFormConst(
                  hintText: "Masukkan Phone",
                  controller: phoneController,
                  onChanged: (p0) {
                    setState(() {});
                  },
                ),
                Row(children: [Text('Kota Domisili')]),
                TextFormConst(
                  hintText: "Masukkan Kota Domisili",
                  controller: cityController,
                  onChanged: (p0) {
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Kota Domisi Tidak Wajib Diisi";
                    }
                    return null;
                  },
                ),

                Text(
                  emailController.text,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  phoneController.text,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  nameController.text,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  cityController.text,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Data Anda"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Nama: ${nameController.text}"),
                                  Text("Email: ${emailController.text}"),
                                  Text("No. Telepon: ${phoneController.text}"),
                                  Text("Kota Domisili: ${cityController.text}"),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                        context.push(
                          Day15HomeB(
                            email: emailController.text,
                            name: nameController.text,
                            phone: phoneController.text,
                            city: cityController.text,
                          ),
                        );
                      }
                    },
                    child: Text("Simpan"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

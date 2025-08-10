import 'package:flutter/material.dart';

class checkboxx extends StatefulWidget {
  const checkboxx({super.key});

  @override
  State<checkboxx> createState() => _checkboxxState();
}

class _checkboxxState extends State<checkboxx> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "Saya menyetujui semua persyaratan yang berlaku :",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Checkbox(
              // fillColor: WidgetStatePropertyAll(Colors.red),
              // isError: true,
              // shape: RoundedRectangleBorder(
              //   side: BorderSide(color: Colors.red, width: 2),
              //   borderRadius: BorderRadius.circular(5),
              // ),
              activeColor: Colors.blue,
              value: isCheck,
              onChanged: (value) {
                setState(() {
                  isCheck = value!;
                });
              },
            ),
            Text(
              isCheck
                  ? "Lanjutkan pendaftaran diperbolehkan"
                  : "Anda belum bisa melanjutkan",
            ),
            SizedBox(height: 10),
            Image.asset(
              isCheck ? "assets/images/yess.gif" : "assets/images/noo.gif",
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}

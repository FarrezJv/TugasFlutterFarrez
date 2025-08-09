import 'package:flutter/material.dart';

class timepicker1 extends StatefulWidget {
  const timepicker1({super.key});

  @override
  State<timepicker1> createState() => _timepicker1State();
}

class _timepicker1State extends State<timepicker1> {
  TimeOfDay? pilihWaktu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Atur Pengingat"),
            ElevatedButton(
              child: Text("Pilih Waktu Pengingat"),
              onPressed: () async {
                final TimeOfDay? waktu = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (waktu != null) {
                  setState(() {
                    pilihWaktu = waktu;
                  });
                }
                if (waktu != null) {
                  setState(() {});
                  pilihWaktu = waktu;
                }
              },
            ),
            Text(
              pilihWaktu == null
                  ? "Pilih jam dulu"
                  : " Pengingat diatur pukul ${pilihWaktu!.hour.toString()} : ${pilihWaktu!.minute.toString()}",
            ),
          ],
        ),
      ),
    );
  }
}

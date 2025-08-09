import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class datepicker1 extends StatefulWidget {
  const datepicker1({super.key});

  @override
  State<datepicker1> createState() => _datepicker1State();
}

class _datepicker1State extends State<datepicker1> {
  DateTime? pilihtanggal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Pilih Tanggal Lahir Anda:"),
          SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              child: Text("Pilih Tanggal Lahir Anda"),
              onPressed: () async {
                final DateTime? tanggal = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1990),
                  lastDate: DateTime(2050),
                );
                if (tanggal != null) {
                  setState(() {});
                  pilihtanggal = tanggal;
                }
              },
            ),
          ),
          Text(
            pilihtanggal == null
                ? "Pilih tanggal dulu"
                : ("Tanggal Lahir Anda: ${DateFormat("dd MMMM yyyy", "id_ID").format(pilihtanggal!)}"),
          ),
        ],
      ),
    );
  }
}

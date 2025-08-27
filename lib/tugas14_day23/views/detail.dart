import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas14_day23/model/model.dart';

class Detail1 extends StatelessWidget {
  final Welcome welcome;
  const Detail1({super.key, required this.welcome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: Image.asset(
          "assets/images/Gyarados.jfif",
          width: 50,
          height: 50,
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            child: Image.asset(
              "assets/images/Salamence #373.jfif",
              fit: BoxFit.cover,
            ),
          ),
          Image.asset("assets/images/download (1).jfif", fit: BoxFit.cover),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Foto utama
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                welcome.imageUrl ?? "",
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),

            // Card dengan data
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue.shade200, Colors.blue.shade50],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    _buildInfoTile("ID Number", welcome.id.toString()),
                    _buildInfoTile("Full Name", welcome.fullName ?? ""),
                    _buildInfoTile("First Name", welcome.firstName ?? ""),
                    _buildInfoTile("Last Name", welcome.lastName ?? ""),
                    _buildInfoTile("Title Name", welcome.title ?? ""),
                    _buildInfoTile("Family Name", welcome.family ?? ""),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.label_important, color: Colors.blue[700], size: 22),
          const SizedBox(width: 10),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 16, color: Colors.black87),
                children: [
                  TextSpan(
                    text: "$label: ",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: value),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

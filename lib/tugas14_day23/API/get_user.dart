import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_b_3/tugas14_day23/model/model.dart';

Future<List<Welcome>> getUser() async {
  final response = await http.get(
    Uri.parse("https://thronesapi.com/api/v2/Characters"),
  );
  print(response.body);
  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    return userJson.map((json) => Welcome.fromJson(json)).toList();
  } else {
    throw Exception("Data Tidak Ditemukan");
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class ProdukModel {
  final String nama;
  final String price;
  // final Color warna;
  final IconData icon;

  ProdukModel({
    required this.nama,
    required this.price,
    // required this.warna,
    required this.icon,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nama': nama,
      'price': price,
      // 'warna': warna.value,
      'icon': Icon,
    };
  }

  factory ProdukModel.fromMap(Map<String, dynamic> map) {
    return ProdukModel(
      nama: map['nama'] as String,
      price: map['price'] as String,
      // warna: Color(map['warna'] as int),
      icon: map["icon"] as IconData,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdukModel.fromJson(String source) =>
      ProdukModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

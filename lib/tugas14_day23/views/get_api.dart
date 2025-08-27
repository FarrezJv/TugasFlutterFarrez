import 'package:flutter/material.dart';
import 'package:ppkd_b_3/extension/navigation.dart';
import 'package:ppkd_b_3/tugas14_day23/API/get_user.dart';
import 'package:ppkd_b_3/tugas14_day23/model/model.dart';
import 'package:ppkd_b_3/tugas14_day23/views/detail.dart';

class Day23GetAPIScreen extends StatefulWidget {
  const Day23GetAPIScreen({super.key});
  static const id = "/get_api_screen";

  @override
  State<Day23GetAPIScreen> createState() => _Day23GetAPIScreenState();
}

class _Day23GetAPIScreenState extends State<Day23GetAPIScreen> {
  String _searchQuery = "";

  void _refreshProduk() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _refreshProduk,
        child: const Icon(Icons.update),
      ),

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
      body: Column(
        children: [
          Image.asset("assets/images/100.PNG"),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Cari karakter berdasarkan nama...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value.toLowerCase();
                });
              },
            ),
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FutureBuilder<List<Welcome>>(
                        future: getUser(),
                        builder:
                            (
                              BuildContext context,
                              AsyncSnapshot<List<Welcome>> snapshot,
                            ) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const CircularProgressIndicator();
                              } else if (snapshot.hasData) {
                                final users = snapshot.data!;

                                final filteredUsers = users.where((user) {
                                  final name =
                                      user.fullName.toLowerCase() ?? "";
                                  return name.contains(_searchQuery);
                                }).toList();

                                if (filteredUsers.isEmpty) {
                                  return const Text(
                                    "Karakter tidak ditemukan.",
                                  );
                                }

                                return ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: filteredUsers.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                        final dataUser = filteredUsers[index];
                                        return Card(
                                          elevation: 6,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              40,
                                            ),
                                          ),
                                          color: const Color.fromARGB(
                                            255,
                                            137,
                                            218,
                                            255,
                                          ),
                                          child: ListTile(
                                            onTap: () {
                                              context.push(
                                                Detail1(welcome: dataUser),
                                              );
                                            },
                                            leading: CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                dataUser.imageUrl ?? "",
                                              ),
                                            ),
                                            title: Text(
                                              dataUser.fullName ?? "",
                                            ),
                                            subtitle: Text(
                                              dataUser.title ?? "",
                                            ),
                                          ),
                                        );
                                      },
                                );
                              } else {
                                return const Text("Gagal Memuat data");
                              }
                            },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

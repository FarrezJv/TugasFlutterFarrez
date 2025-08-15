import 'package:flutter/material.dart';
import 'package:ppkd_b_3/Tugas10Flutter/textform.dart';
import 'package:ppkd_b_3/tugas11-day_16/model/user.dart';
import 'package:ppkd_b_3/tugas11-day_16/sqflite/db_helper.dart';

class Day16UserScreen extends StatefulWidget {
  const Day16UserScreen({super.key});

  @override
  State<Day16UserScreen> createState() => _Day16UserScreenState();
}

class _Day16UserScreenState extends State<Day16UserScreen> {
  List<User> users = [];
  @override
  void initState() {
    super.initState();
    getUser();
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController eventController = TextEditingController();
  final TextEditingController cityController = TextEditingController();

  Future<void> getUser() async {
    final dataUser = await DbHelper.getAllUsers();
    print(dataUser);
    setState(() {
      users = dataUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormConst(hintText: "Nama", controller: nameController),
            TextFormConst(hintText: "Email", controller: emailController),
            TextFormConst(hintText: "Password", controller: passwordController),
            TextFormConst(hintText: "event", controller: eventController),
            TextFormConst(hintText: "city", controller: cityController),
            ElevatedButton(
              onPressed: () async {
                final email = emailController.text.trim();
                final password = passwordController.text.trim();
                final name = nameController.text.trim();
                final event = eventController.text.trim();
                final city = cityController.text.trim();
                if (email.isEmpty || password.isEmpty || name.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Email, Password, dan Nama tidak boleh kosong",
                      ),
                    ),
                  );

                  return;
                }
                final user = User(
                  email: email,
                  password: password,
                  name: name,
                  event: event,
                  city: city,
                );
                await DbHelper.registerUser(user);
                Future.delayed(const Duration(seconds: 1)).then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Pendaftaran berhasil")),
                  );
                });
                getUser();
                setState(() {});
              },
              child: Text("Simpan Data"),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                final dataUserLogin = users[index];
                return ListTile(
                  title: Text(dataUserLogin.name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(dataUserLogin.email),
                      Text(dataUserLogin.event),
                      Text(dataUserLogin.city),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Edit Data'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextFormConst(
                                    controller: nameController
                                      ..text = dataUserLogin.name,
                                    hintText: 'Nama',
                                  ),
                                  SizedBox(height: 12),
                                  TextFormConst(
                                    controller: emailController
                                      ..text = dataUserLogin.email,
                                    hintText: 'Email',
                                  ),
                                  SizedBox(height: 12),

                                  TextFormConst(
                                    controller: passwordController
                                      ..text = dataUserLogin.password,
                                    hintText: 'Password',
                                  ),
                                  SizedBox(height: 12),

                                  TextFormConst(
                                    controller: eventController
                                      ..text = dataUserLogin.event,
                                    hintText: 'Event',
                                  ),
                                  SizedBox(height: 12),

                                  TextFormConst(
                                    controller: cityController
                                      ..text = dataUserLogin.city,
                                    hintText: 'city',
                                  ),
                                ],
                              ),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    final dataUser = User(
                                      id: dataUserLogin.id!,
                                      email: emailController.text,
                                      password: passwordController.text,
                                      name: nameController.text.trim(),
                                      city: cityController.text.trim(),
                                      event: eventController.text.trim(),
                                    );
                                    DbHelper.updateUser(dataUser);
                                    getUser();
                                    Navigator.pop(context);
                                  },
                                  child: Text('Simpan'),
                                ),
                                ElevatedButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('Batal'),
                                ),
                              ],
                            ),
                          );
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          DbHelper.deleteUser(dataUserLogin.id!);
                          getUser();
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
                // Column(
                //   children: [
                //     Text(dataUserLogin.name),
                //     SizedBox(height: 8),
                //     Text(dataUserLogin.email),
                //     SizedBox(height: 8),
                //     Text(dataUserLogin.password),
                //     SizedBox(height: 8),
                //     Text(dataUserLogin.event),
                //     SizedBox(height: 8),
                //     Text(dataUserLogin.city),

                //   ],

                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}

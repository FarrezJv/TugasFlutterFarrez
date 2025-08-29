import 'package:flutter/material.dart';
import 'package:ppkd_b_3/Tugas15_day25/api/register.dart';
import 'package:ppkd_b_3/Tugas15_day25/model/get_user_model.dart';
import 'package:ppkd_b_3/Tugas15_day25/view/login.dart';
import 'package:ppkd_b_3/extension/navigation.dart';
import 'package:ppkd_b_3/preference/shared_preference.dart';

class Dashboard1 extends StatefulWidget {
  const Dashboard1({super.key});
  static const id = '/dashboard';
  @override
  State<Dashboard1> createState() => _Dashboard1State();
}

class _Dashboard1State extends State<Dashboard1> {
  final TextEditingController nameController = TextEditingController();
  GetUserModel? userData;
  bool isLoading = true;
  String errorMessage = '';
  @override
  void initState() {
    super.initState();
    fetchToken();
  }

  void fetchToken() async {
    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {
      final data = await AuthenticationAPI.getProfile();
      // Navigator.pop(context);
      setState(() {
        userData = data;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        errorMessage = e.toString();
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : errorMessage.isNotEmpty
          ? Center(
              child: Text(
                "Error: $errorMessage",
                style: const TextStyle(color: Colors.red),
              ),
            )
          : userData == null
          ? Center(child: Text("Data tidak tersedia"))
          : Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.badge,
                              color: Colors.indigo,
                              size: 30,
                            ),
                            title: Text(
                              "ID",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "${userData?.data?.id ?? '-'}",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(
                              Icons.person,
                              color: Colors.indigo,
                              size: 30,
                            ),
                            title: Text(
                              "Nama",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              userData?.data?.name ?? '-',
                              style: TextStyle(fontSize: 16),
                            ),
                            onTap: () async {
                              final dialog =
                                  await showDialog(
                                    context: context,
                                    builder: (context) => StatefulBuilder(
                                      builder: (context, setState) {
                                        return AlertDialog(
                                          title: Text("Edit Data"),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              TextFormField(
                                                controller: nameController
                                                  ..text =
                                                      userData?.data?.name ??
                                                      '-',
                                                // decoration: InputDecoration(
                                                //   hintText: "Pertanyaan",
                                                // ),
                                              ),
                                              SizedBox(height: 12),
                                            ],
                                          ),
                                          actions: [
                                            ElevatedButton(
                                              onPressed: () async {
                                                setState(() {
                                                  isLoading = true;
                                                });
                                                await AuthenticationAPI.updateUser(
                                                  name: nameController.text,
                                                );
                                                setState(() {
                                                  isLoading = false;
                                                });
                                                Navigator.pop(context);
                                              },
                                              child: isLoading
                                                  ? CircularProgressIndicator()
                                                  : Text("OK"),
                                            ),
                                            ElevatedButton(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: Text("Back"),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ).then((value) async {
                                    final data =
                                        await AuthenticationAPI.getProfile();
                                    setState(() {
                                      userData = data;
                                      isLoading = false;
                                    });
                                  });
                            },
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(
                              Icons.email,
                              color: Colors.indigo,
                              size: 30,
                            ),
                            title: Text(
                              "Email",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              userData?.data?.email ?? '-',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        PreferenceHandler.removeLogin();
                        context.pushReplacement(login1());
                      },
                      child: const Text(
                        "Keluar Dari Aplikasi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

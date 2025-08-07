import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Tugas6 extends StatefulWidget {
  const Tugas6({super.key});

  @override
  State<Tugas6> createState() => _Tugas6State();
}

class _Tugas6State extends State<Tugas6> {
  bool _obscurePassword = true;
  final _formKey = GlobalKey<FormState>();

  // final TapGestureRecognizer _tapGestureRecognizer = TapGestureRecognizer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
        title: Text("Login", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 24),
              child: Text(
                "Welcome Back",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Sign in to your account",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text(
                    "Email Address",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    // autocorrect: true,
                    // autofocus: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      hintText: " Masukkan Email Anda",
                    ),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: TextFormField(
                    // autocorrect: true,
                    // autofocus: true,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                      hintText: " Masukkan Password Anda",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password Tidak Boleh Kosong";
                      }
                      return null;
                    },
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     if (_formKey.currentState!.validate()) {
                //       ScaffoldMessenger.of(context).showSnackBar(
                //         const SnackBar(content: Text("Login Sukses")),
                //       );
                //     }
                //   },
                //   child: Text("Submit"),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, bottom: 8),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Login Berhasil"),
                              Image.asset(
                                "assets/images/inunaka-akari.gif",
                                width: 120,
                                height: 120,
                              ),
                            ],
                          ),
                          content: Text(
                            "Selamat datang kembali",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          actions: [
                            TextButton(
                              child: Text("Lanjutkan"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   const SnackBar(content: Text("Login Sukses")),
                    // );
                  }
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    Color(0xFF4C53A5), // Ganti dengan warna yang diinginkan
                  ),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: (Colors.white),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text.rich(
                TextSpan(
                  text: "don't have an account? ",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Anda akan mulai membuat akun");
                        },
                      text: "Sign Up",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Or Sign In With",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  SizedBox(
                    height: 48,
                    width: 155,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                          Color(0XFFFAFAFA),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Image.asset(
                                "assets/images/googlelogo.png",
                                width: 16,
                                height: 16,
                              ),
                            ),

                            Text(
                              "Google",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 17),
                  SizedBox(
                    height: 48,
                    width: 155,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                          Color(0XFFFAFAFA),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Image.asset(
                                "assets/images/facebook.png",
                                width: 16,
                                height: 16,
                              ),
                            ),

                            Text(
                              "Google",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text.rich(
                TextSpan(
                  text: "don't have an account? ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Anda akan mulai bergabung");
                        },
                      text: "Join Us",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

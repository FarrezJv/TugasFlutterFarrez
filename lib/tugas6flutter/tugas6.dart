import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ppkd_b_3/extension/navigation.dart';
import 'package:ppkd_b_3/preference/shared_preference.dart';
import 'package:ppkd_b_3/tugas11-day_16/sqflite/db_helper.dart';
import 'package:ppkd_b_3/tugas11-day_16/views/register.dart';
import 'package:ppkd_b_3/tugas8flutter/tugas8.dart';

class Tugas6 extends StatefulWidget {
  const Tugas6({super.key});
  static const id = "/tugas6";

  @override
  State<Tugas6> createState() => _Tugas6State();
}

class _Tugas6State extends State<Tugas6> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isVisibility = false;
  // Widget build(BuildContext context) {
  //   // return Scaffold(body: Stack(children: [buildBackground(), buildLayer()]));
  // }
  login() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Email dan Password tidak boleh kosong")),
      );
      // isLoading = false;

      return;
    }
    final userData = await DbHelper.loginUser(email, password);
    if (userData != null) {
      PreferenceHandler.saveLogin();
      context.pushReplacementNamed(Tugas8.id);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Email atau Password salah")),
      );
    }
  }

  bool _obscurePassword = true;
  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
        title: Text("Login", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Form(
        // key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 24),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Gilroy",
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Sign in to your account",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
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
                    controller: emailController,
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
                    controller: passwordController,
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
              child: ElevatedButton(
                onPressed: () {
                  // if (_formKey.currentState!.validate()) {
                  login();
                  // showDialog(
                  //   context: context,
                  //   builder: (context) {
                  //     return AlertDialog(
                  //       title: Column(
                  //         mainAxisSize: MainAxisSize.min,
                  //         children: [
                  //           Text("Login Berhasil"),
                  //           Image.asset(
                  //             "assets/images/inunaka-akari.gif",
                  //             width: 120,
                  //             height: 120,
                  //           ),
                  //         ],
                  //       ),
                  //       content: Text(
                  //         "Selamat datang kembali",
                  //         textAlign: TextAlign.center,
                  //         style: TextStyle(fontWeight: FontWeight.bold),
                  //       ),
                  //       actions: [
                  //         TextButton(
                  //           child: Text("Lanjutkan"),
                  //           onPressed: () {
                  //             context.pushNamed(Tugas8.id);
                  //             login();
                  //             // Navigator.pushNamed(context, '/Tugas5');
                  //             // child: Text("Kembali ke Halaman Utama"),
                  //             // Navigator.pop(
                  //             //   context,
                  //             //   MaterialPageRoute(
                  //             //     builder: (context) => Tugastes(),
                  //             //   ),
                  //             // );
                  //           },
                  //         ),
                  //         // ElevatedButton(
                  //         //   onPressed: () {
                  //         //     // Navigator.pushAndRemoveUntil(context, '/Tugastes');
                  //         //   },
                  //         //   child: const Text('AYO KE TUGAS TEST'),
                  //         // ),
                  //       ],
                  //     );
                  //   },
                  // );
                  // }
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    Color(0xFF4C53A5),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or Sign In With",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                ],
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
            // SizedBox(height: 20),
            // Padding(
            //   padding: const EdgeInsets.only(left: 25),
            //   child: Text.rich(
            //     TextSpan(
            //       text: "don't have an account? ",
            //       style: TextStyle(
            //         color: Colors.grey,
            //         fontSize: 14,
            //         fontWeight: FontWeight.w400,
            //       ),
            //       children: [
            //         TextSpan(
            //           // recognizer: TapGestureRecognizer()
            //           //   ..onTap = () {
            //           //     print("Anda akan mulai bergabung");
            //           //   },
            //           text: "Join Us",
            //           style: TextStyle(
            //             color: Colors.orange,
            //             fontWeight: FontWeight.bold,
            //             decoration: TextDecoration.underline,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // TextButton(
            //   onPressed: () {
            //     context.push(Tugas10());
            //     // Navigator.pushReplacement(
            //     //   context,
            //     //   MaterialPageRoute(builder: (context) => MeetEmpatA()),
            //     // );
            //   },
            //   child: Text(
            //     "Sign Up",
            //     style: TextStyle(
            //       // color: AppColor.blueButton,
            //       fontSize: 12,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  // style: TextStyle(fontSize: 12, color: AppColor.gray88),
                ),
                TextButton(
                  onPressed: () {
                    context.push(RegisterScreen());
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => MeetEmpatA()),
                    // );
                  },
                  child: Text(
                    "Join Us",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ppkd_b_3/Tugas15_day25/api/register.dart';
import 'package:ppkd_b_3/Tugas15_day25/model/register_model.dart';
import 'package:ppkd_b_3/Tugas15_day25/view/dashboard.dart';
import 'package:ppkd_b_3/Tugas15_day25/view/post_api.dart';
import 'package:ppkd_b_3/extension/navigation.dart';
import 'package:ppkd_b_3/preference/shared_preference.dart';

class login1 extends StatefulWidget {
  const login1({super.key});
  static const id = "/login";

  @override
  State<login1> createState() => _login1State();
}

class _login1State extends State<login1> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isVisibility = false;
  bool _obscurePassword = true;
  bool isLoading = false;
  RegisterUserModel? user;
  String? errorMessage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   colors: [Colors.blue, Colors.purple],
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            // ),
            color: Colors.indigo,
          ),
        ),
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 20),
        //   child: Image.asset(
        //     "assets/images/pngwing.com.png",
        //     fit: BoxFit.contain,
        //     width: 40,
        //     height: 40,
        //   ),
        // ),
        actions: [
          Row(
            children: [
              Icon(Icons.volume_down, size: 40, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.account_circle, size: 40, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.settings, size: 40, color: Colors.white),
            ],
          ),
        ],
      ),
      body:
          // Container(
          //   decoration: BoxDecoration(
          //     image:
          //   ),
          // ),
          Container(
            // width: double.infinity,
            // height: double.infinity,
            // color: Colors.green,
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   colors: [Colors.green.shade400, Colors.orange.shade300],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              // ),
              color: const Color.fromARGB(255, 255, 211, 145),
            ),
            child: Form(
              child: Column(
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Image(
                  //       width: 50,
                  //       height: 50,
                  //       image: AssetImage(
                  //         "assets/images/Logo_crop-removebg-preview.png",
                  //       ),
                  //     ),

                  //     Padding(
                  //       padding: const EdgeInsets.only(left: 40),
                  //       child: Image(
                  //         width: 200,
                  //         height: 200,
                  //         image: AssetImage("assets/images/nulis.png"),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Center(
                    child: Text(
                      "Selamat Datang kembali!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        // fontFamily: "Gilroy",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Masukkan Email Anda",
                          labelText: "Email",
                          filled: true,
                          fillColor: Colors.orange,
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      // horizontal: 20,
                      // vertical: 15,
                      top: 15,
                      right: 20,
                      left: 20,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: _obscurePassword,
                        decoration: InputDecoration(
                          hintText: "Masukkan Password Anda",
                          labelText: "Password",
                          filled: true,
                          fillColor: Colors.orange,
                          prefixIcon: Icon(Icons.password),
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
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        loginUser();
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                          Colors.orange,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        // style: TextStyle(fontSize: 12, color: AppColor.gray88),
                      ),
                      TextButton(
                        onPressed: () {
                          context.push(Register1());
                          // context.push(RegisterScreen());
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
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(color: Colors.grey, thickness: 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Or Sign In With",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        Expanded(
                          child: Divider(color: Colors.grey, thickness: 1),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
    );
  }

  void loginUser() async {
    setState(() {
      isLoading = true;
      errorMessage = null;
    });
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    // final name = nameController.text.trim();
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Email, Password, dan Nama tidak boleh kosong"),
        ),
      );
      isLoading = false;

      return;
    }
    try {
      final result = await AuthenticationAPI.loginUser(
        email: email,
        password: password,
        // name: name,
      );
      setState(() {
        user = result;
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Login berhasil")));
      PreferenceHandler.saveToken(user?.data.token.toString() ?? "");
      // Navigator.pushReplacementNamed(Dashboard1.id);
      context.pushReplacement(Dashboard1());

      print(user?.toJson());
    } catch (e) {
      print(e);
      setState(() {
        errorMessage = e.toString();
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(errorMessage.toString())));
    } finally {
      setState(() {});
      isLoading = false;
    }
    // context.pushReplacementNamed(Dashboard1.id);
  }
}

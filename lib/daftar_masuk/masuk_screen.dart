import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../BottomNavBar.dart';
import 'daftar_screen.dart';

class masuk_screen extends StatefulWidget {
  const masuk_screen({Key? key}) : super(key: key);

  @override
  State<masuk_screen> createState() => _masuk_screenState();
}

class _masuk_screenState extends State<masuk_screen> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = false;
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;

  String? errorMessage;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return;
      textFieldFocusNode.canRequestFocus = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return iniwidget();
  }

  Widget iniwidget() {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Form(
        key: _formKey,
        child: ListView(children: [
          Container(
            margin: EdgeInsets.only(
              top: 45,
            ),
            child: Center(
              child: Text(
                "Web Kuy",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Gemunu Libre",
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 35.33,
            ),
            child: Center(
              child: Image.asset("images/masuk-daftar.png"),
            ),
          ),

          // Daftar-----------------------------------------------------------------------
          Container(
            margin: EdgeInsets.only(top: 20, left: 30, right: 233),
            child: Text(
              "Masuk",
              style: TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
          // Kuy Daftar-----------------------------------------------------------------------
          Container(
            margin: EdgeInsets.only(top: 2, left: 30, right: 88),
            child: Text(
              "Kuy masuk untuk lanjut belajar",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // Container BG Putih----------------------------------------------------------------
          Container(
              margin: EdgeInsets.only(top: 40),
              // decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              width: null,
              height: 500,
              child: Column(
                children: [
                  //Email field
                  Container(
                    margin: EdgeInsets.only(right: 30, left: 30, top: 20),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'E-Mail'),
                      style: TextStyle(fontSize: 16),
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Please Enter Your Email");
                        }
                        // reg expression for email validation
                        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return ("Please Enter a valid email");
                        }
                        return null;
                      },
                      onSaved: (value) {
                        emailController.text = value!;
                      },
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  //Password field
                  Container(
                    margin: EdgeInsets.only(right: 30, left: 30, top: 32),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        suffixIcon: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: GestureDetector(
                            onTap: _toggleObscured,
                            child: Icon(
                                _obscured
                                    ? Icons.visibility_rounded
                                    : Icons.visibility_off_rounded,
                                size: 24,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                      validator: (value) {
                        RegExp regex = new RegExp(r'^.{6,}$');
                        if (value!.isEmpty) {
                          return ("Password is required for login");
                        }
                        if (!regex.hasMatch(value)) {
                          return ("Enter Valid Password(Min. 6 Character)");
                        }
                        return null;
                      },
                      onSaved: (value) {
                        passwordController.text = value!;
                      },
                    ),
                  ),

                  // BTN Masuk-----------------------------------------------------------
                  Container(
                    margin: EdgeInsets.only(top: 50, right: 45, left: 45),
                    width: 200,
                    height: 54,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        onPressed: () {
                          signIn(emailController.text, passwordController.text);
                        },
                        child: Text(
                          "Masuk",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Poppins-SemiBold"),
                        )),
                    // color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 76, left: 45, right: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '  Anda belum memiliki akun?  ',
                          textAlign: TextAlign.center,
                        ),
                        GestureDetector(
                          child: Text(
                            "Daftar",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.blue),
                          ),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => daftar_screen()));
                          },
                        )
                      ],
                    ),
                  )
                ],
              )),
        ]),
      ),
    );
  }

  // login function
  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        UserCredential myUser = await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        // .then((uid) => {
        //       Fluttertoast.showToast(msg: "Login Successful"),
        //       Navigator.of(context).pushReplacement(
        //           MaterialPageRoute(builder: (context) => ButtomNavBar())),
        //     });
        if (myUser.user!.emailVerified) {
          Fluttertoast.showToast(msg: "Login Successful");
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => ButtomNavBar()));
        } else {
          Get.defaultDialog(
            title: "Email Verifikasi",
            middleText: "$email belum terverifikasi",
          );
        }
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";

            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }
}

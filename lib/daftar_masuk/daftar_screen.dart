import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'masuk_screen.dart';
import 'restapi/usermodel.dart';

class daftar_screen extends StatefulWidget {
  const daftar_screen({Key? key}) : super(key: key);

  @override
  State<daftar_screen> createState() => _daftar_screenState();
}

class _daftar_screenState extends State<daftar_screen> {
  final _auth = FirebaseAuth.instance;

  // string for displaying the error Message
  String? errorMessage;

  // editing Controller
  final nameeditController = new TextEditingController();
  final emaileditController = new TextEditingController();
  final passwordeditController = new TextEditingController();

  //final confirmPasswordEditingController = new TextEditingController();

  // our form key
  final _formKey = GlobalKey<FormState>();
  final textFieldFocusNode = FocusNode();
  bool _obscured = false;
  bool _checkBoxVal = false;
  void _toggle() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus)
        return; // If focus is on text field, dont unfocus
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
              "Daftar",
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
              "Kuy daftar untuk lanjut belajar",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // Container BG Putih----------------------------------------------------------------
          Container(
              margin: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              width: null,
              height: 490,
              child: Column(
                children: [
                  //Name field
                  Container(
                    margin: EdgeInsets.only(right: 30, left: 30, top: 20),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Nama'),
                      style: TextStyle(fontSize: 16),
                      controller: nameeditController,
                      autofocus: false,
                      validator: (value) {
                        RegExp regex = new RegExp(r'^.{3,}$');
                        if (value!.isEmpty) {
                          return ("Name cannot be Empty");
                        }
                        if (!regex.hasMatch(value)) {
                          return ("Enter Valid name(Min. 3 Character)");
                        }
                        return null;
                      },
                      onSaved: (value) {
                        nameeditController.text = value!;
                      },
                    ),
                  ),
                  //Email field
                  Container(
                    margin: EdgeInsets.only(right: 30, left: 30, top: 20),
                    child: TextFormField(
                      style: TextStyle(fontSize: 16),
                      controller: emaileditController,
                      autofocus: false,
                      decoration: InputDecoration(hintText: 'E-Mail'),
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
                        emaileditController.text = value!;
                      },
                    ),
                  ),
                  //Password field
                  Container(
                    margin: EdgeInsets.only(right: 30, left: 30, top: 32),
                    child: TextFormField(
                      style: TextStyle(fontSize: 16),
                      controller: passwordeditController,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        suffixIcon: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: GestureDetector(
                            onTap: _toggle,
                            child: Icon(
                                _obscured
                                    ? Icons.visibility_rounded
                                    : Icons.visibility_off_rounded,
                                size: 24,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                      obscureText: true,
                      validator: (value) {
                        RegExp regex = new RegExp(r'^.{6,}$');
                        if (value!.isEmpty) {
                          return ("Password is required for login");
                        }
                        if (!regex.hasMatch(value)) {
                          return ("Enter Valid Password(Min. 6 Character)");
                        }
                      },
                      onSaved: (value) {
                        passwordeditController.text = value!;
                      },
                    ),
                  ),
                  //Button Daftar
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
                          signUp(emaileditController.text,
                              passwordeditController.text);
                        },
                        child: Text(
                          "Daftar",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Poppins-SemiBold"),
                        )),
                    // color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 76, left: 55, right: 55),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ' Anda sudah memiliki akun? ',
                          textAlign: TextAlign.center,
                        ),
                        GestureDetector(
                          child: Text(
                            "Masuk",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.blue),
                          ),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => masuk_screen()));
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

  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        UserCredential myUser = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        //     .then((value) => {postDetailsToFirestore()})
        //     .catchError((e) {
        //   Fluttertoast.showToast(msg: e!.message);
        // });
        await myUser.user!.sendEmailVerification();
        Get.defaultDialog(
            title: "Email Verifikasi",
            middleText: "Kami telah mengirimkan email verifikasi ke $email",
            onConfirm: () {
              postDetailsToFirestore();
              Get.back();
              Get.back();
            },
            textConfirm: "Ya saya akan cek email");
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

  postDetailsToFirestore() async {
    // calling our firestore
    // calling our user model
    // sedning these values

    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    // writing all the values

    //userModel.uid = user?.uid;

    userModel.uid = user?.uid;
    userModel.name = nameeditController.text;
    userModel.email = user!.email;
    userModel.password = passwordeditController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully : ");

    // Navigator.pushAndRemoveUntil(
    //     (context),
    //     MaterialPageRoute(builder: (context) => LoginScreen()),
    //     (route) => false);
  }
}

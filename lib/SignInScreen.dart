import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo_project/HomePage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'Community.dart';
import 'SignUpScreen.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isLoggedIn = false;
  bool _loaderShow = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Future<UserCredential?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      setState(() {
        _loaderShow = true;
      });
      final credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      setState(() {
        _loaderShow = false;
      });
      return credential;
    } on Exception catch (e) {
      setState(() {
        _loaderShow = false;
      });
      print('Catch Exception : $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loaderShow) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return _isLoggedIn
          ? const HomePage(title: "Community")
          : SafeArea(
              child: Scaffold(
              backgroundColor: const Color(0xFF101010),
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Image.asset("assets/images/ic_app_logo.jpg"),
                          const SizedBox(
                            height: 30.0,
                          ),
                          const Text(
                            "Welcome Back",
                            style: TextStyle(
                              color: Color(0xFFF9FAFB),
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            "Please enter your details",
                            style: TextStyle(
                              color: Color(0xFF9CA3AF),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              top: 6.0,
                              right: 16.0,
                              bottom: 6.0,
                            ),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              controller: _emailController,
                              maxLines: 1,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400),
                              decoration: InputDecoration(
                                hintText: 'Enter your email',
                                hintStyle: const TextStyle(
                                  color: Colors.white30,
                                ),
                                labelText: 'Email',
                                labelStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFF363636)),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                filled: true,
                                fillColor: const Color(0xFF292929),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              top: 6.0,
                              right: 16.0,
                              bottom: 6.0,
                            ),
                            child: TextField(
                              keyboardType: TextInputType.visiblePassword,
                              controller: _passwordController,
                              maxLines: 1,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400),
                              decoration: InputDecoration(
                                hintText: 'Enter your password',
                                hintStyle: const TextStyle(
                                  color: Colors.white30,
                                ),
                                labelText: 'Password',
                                labelStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFF363636)),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                filled: true,
                                fillColor: const Color(0xFF292929),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color: Color(0xFF9CA3AF),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              InkWell(
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                    left: 5.0,
                                    right: 16.0,
                                  ),
                                  child: Text(
                                    "Reset",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Fluttertoast.showToast(
                                      msg: "Reset clicked!",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                },
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0,
                                right: 16.0,
                                top: 30.0,
                                bottom: 16.0),
                            child: TextButton(
                              onPressed: () {
                                String email = _emailController.text;
                                String password = _passwordController.text;
                                if (password.length >= 6) {
                                  var credential = signInWithEmailAndPassword(
                                      email, password);
                                  credential.then((data) {
                                    if (data?.user != null) {
                                      setState(() {
                                        _isLoggedIn = true;
                                        print("if _isLoggedIn : $_isLoggedIn");
                                      });
                                    } else {
                                      setState(() {
                                        _isLoggedIn = false;
                                        print(
                                            "else _isLoggedIn : $_isLoggedIn");
                                      });
                                    }
                                  });
                                } else {
                                  Fluttertoast.showToast(
                                      msg:
                                          "Password length must be grater than 5 character.",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                }
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red,
                                minimumSize: const Size(double.infinity, 48.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                              ),
                              child: const Text(
                                'Sign in',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 100.0,
                                child: Divider(
                                  height: 2,
                                  thickness: 2.0,
                                  color: Color(0xFF636366),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                                child: Text(
                                  "or join with",
                                  style: TextStyle(
                                    color: Color(0xFF636366),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 100.0,
                                child: Divider(
                                  height: 2,
                                  thickness: 2.0,
                                  color: Color(0xFF636366),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                child: SvgPicture.asset(
                                    "assets/images/ic_google.svg"),
                                onTap: () {
                                  Fluttertoast.showToast(
                                      msg: "Google",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                },
                              ),
                              const SizedBox(
                                width: 40.0,
                              ),
                              GestureDetector(
                                child: SvgPicture.asset(
                                    "assets/images/ic_apple.svg"),
                                onTap: () {
                                  Fluttertoast.showToast(
                                      msg: "Apple",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                },
                              ),
                              const SizedBox(
                                width: 40.0,
                              ),
                              GestureDetector(
                                child: SvgPicture.asset(
                                    "assets/images/ic_facebook.svg"),
                                onTap: () {
                                  Fluttertoast.showToast(
                                      msg: "Facebook",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don’t you have a account?",
                            style: TextStyle(
                              color: Color(0xFF9CA3AF),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          GestureDetector(
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpScreen()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));
    }
  }
}

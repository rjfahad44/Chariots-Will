import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_project/Community.dart';
import 'package:flutter_demo_project/HomePage.dart';
import 'package:flutter_demo_project/SignInScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  bool _isLoggedIn = false;

  @override
  void initState() {

    getData().then((isLoggedIn) {
      setState(() {
        _isLoggedIn = isLoggedIn;
        print("_isLoggedIn : $_isLoggedIn");
      });
    });

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => _isLoggedIn? const HomePage(title: "Community") :const SignInScreen())
      );
    });
    super.initState();
  }


  Future<bool> getData() async {
    final user = _auth.currentUser;
    if (user != null) {
      print("Login User Info => ${user.toString()}");
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset(

            "assets/images/ic_app_logo.jpg"
        ),
      ),
    );
  }
}
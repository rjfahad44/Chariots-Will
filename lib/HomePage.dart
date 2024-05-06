import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_project/Community.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

import 'FirstFivePages.dart';
import 'OtherPages.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoggedIn = false;
  bool _loaderShow = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _loaderShow = true;
    });
    getData().then((isLoggedIn) {
      setState(() {
        _loaderShow = false;
        _isLoggedIn = isLoggedIn;
        print("_isLoggedIn : $_isLoggedIn");
      });
    });
  }

  Future<bool> getData() async {
    final user = _auth.currentUser;
    if (user != null) {
      return true;
    } else {
      return false;
    }
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
    final scaffoldKey = Provider.of<GlobalKey<ScaffoldState>>(context);

    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) async {
        if (didPop) {
          Navigator.pop(context, true);
        } else {
          Navigator.pop(context, false);
        }
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xff1C1C1C),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            _isLoggedIn? widget.title : "SignIn",
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          backgroundColor: const Color(0xff1C1C1C),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        drawer: _buildDrawer(scaffoldKey),
        body: _loaderShow
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : _isLoggedIn
                ? const Community(title: "Community")
                : _signInScreen(),
      ),
    );
  }

  Widget _signInScreen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            top: 6.0,
            right: 16.0,
            bottom: 6.0,
          ),
          child: TextField(
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
                borderSide: const BorderSide(color: Color(0xFF363636)),
                borderRadius: BorderRadius.circular(10.0),
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
                borderSide: const BorderSide(color: Color(0xFF363636)),
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: true,
              fillColor: const Color(0xFF292929),
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Perform sign in logic here
            String email = _emailController.text;
            String password = _passwordController.text;
            // Add your sign in logic here
            var credential = signInWithEmailAndPassword(email, password);
            credential.then((data) {
              if (data?.user != null) {
                setState(() {
                  _isLoggedIn = true;
                  print("if _isLoggedIn : $_isLoggedIn");
                });
              } else {
                setState(() {
                  _isLoggedIn = false;
                  print("else _isLoggedIn : $_isLoggedIn");
                });
              }
            });
          },
          child: const Text('Sign In'),
        ),
      ],
    );
  }

  Widget _buildDrawer(GlobalKey<ScaffoldState> scaffoldKey) {
    final items = [
      'Promises',
      'Dedication',
      'Testimonials',
      'Evangelism',
      'Baptism',
      'Volunteer',
      'Prayer',
      'Territory',
      'Souls spirit and body',
      'Discipleship',
      'Encounter',
      'Home Fellowship',
    ];

    return Drawer(
      backgroundColor: const Color(0xff1C1C1C),
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/demo_profile.png'),
                      radius: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _auth.currentUser?.displayName ?? "Name is empty!",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 0.0),
                        Text(
                          _auth.currentUser?.email ?? "Email is empty!",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final String item = items[index];
                  return ListTile(
                    title: Text(item,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.white)),
                    onTap: () {
                      if(_isLoggedIn){
                        scaffoldKey.currentState?.closeDrawer();
                        goTo(item);
                      }else{
                        Fluttertoast.showToast(
                            msg: "Please Login First!!",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                        //ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please Login First!!')));
                      }
                    },
                    dense: true,
                  );
                },
              ),
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: TextButton.icon(
                    icon: const Icon(
                      Icons.exit_to_app,
                      color: Colors.red,
                    ),
                    label: const Text(
                      'Logout',
                      style: TextStyle(fontSize: 12, color: Colors.red),
                    ),
                    onPressed: () {
                      _auth.signOut();
                      setState(() {
                        _isLoggedIn = false;
                        print("_isLoggedIn : $_isLoggedIn");
                      });
                      scaffoldKey.currentState?.closeDrawer();
                    },
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }

  void goTo(String item) {
    switch (item) {
      case "Promises":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FirstFivePages(title: "Promises"),
            ));
        break;
      case "Dedication":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FirstFivePages(title: "Dedication"),
            ));
        break;
      case "Testimonials":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FirstFivePages(title: "Testimonials"),
            ));
        break;
      case "Evangelism":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FirstFivePages(title: "Evangelism"),
            ));
        break;
      case "Baptism":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FirstFivePages(title: "Baptism"),
            ));
        break;
      case "Volunteer":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OtherPages(title: "Volunteer"),
            ));
        break;
      case "Prayer":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OtherPages(title: "Prayer"),
            ));
        break;
      case "Territory":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OtherPages(title: "Territory"),
            ));
        break;
      case "Souls spirit and body":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const OtherPages(title: "Souls spirit and body"),
            ));
        break;
      case "Discipleship":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OtherPages(title: "Discipleship"),
            ));
        break;
      case "Encounter":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OtherPages(title: "Encounter"),
            ));
        break;
      case "Home Fellowship":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OtherPages(title: "Home Fellowship"),
            ));
        break;
      default:
        "Handle default item click here";
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

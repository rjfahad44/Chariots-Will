import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_project/Community.dart';
import 'package:provider/provider.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<bool> getData() async {
    final user = _auth.currentUser;
    if (user == null) {
      return true;
    } else {
      return false;
    }
  }

  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    getData().then((isLoggedIn) {
      setState(() {
        _isLoggedIn = isLoggedIn;
      });
    });
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
            widget.title,
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
        body: const Column(
          children: [
            // Center(
            //   child: Text(
            //     "$_isLoggedIn",
            //     style: const TextStyle(
            //       color: Colors.white,
            //       fontSize: 50.0,
            //       fontWeight: FontWeight.w700,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
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
      'Community',
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
            const Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/demo_profile.png'),
                      radius: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Andrew',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 0.0),
                        Text(
                          'John@gmail.com',
                          style: TextStyle(
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
                      scaffoldKey.currentState?.closeDrawer();
                      goTo(item);
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
                      print("Logout");
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
      case "Community":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Community(title: "Community"),
            ));
        break;
      case "":
        break;
      default:
        "Handle default item click here";
    }
  }
}

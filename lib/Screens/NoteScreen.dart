import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_project/firebaseDB/FirestoreDb.dart';
import 'package:flutter_demo_project/model/NoteModel.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

import '../utils/Constants.dart';

class NoteScreen extends StatefulWidget {
  final String title;
  final String subUid;

  NoteScreen({super.key, required this.title, required this.subUid});

  @override
  State<StatefulWidget> createState() => _noteScreenState();
}

class _noteScreenState extends State<NoteScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirestoreDb firestoreDb = FirestoreDb();
  final TextEditingController _noteController = TextEditingController();
  bool isDataDeleting = false;
  NoteModel noteData = NoteModel();

  @override
  void initState() {
    getNote();
    super.initState();
  }

  Future<NoteModel?> getNote() async {
    try {
      final noteDoc = await _firestore
          .collection('UsersNote')
          .doc('${userData.userUid + widget.subUid}')
          .get();
      if (noteDoc.exists) {
        setState(() {
          noteData = NoteModel.fromJson(noteDoc.data() as Map<String, dynamic>);
          _noteController.text = '${noteData.note}';
          isDataDeleting = true;
        });
        return noteData;
      } else {
        print('Document does not exist');
        setState(() {
          isDataDeleting = false;
        });
        return null;
      }
    } catch (e) {
      print('Error fetching note: $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101010),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: isDataDeleting
                ? IconButton(
                    onPressed: () {
                      if (noteData.uid.isEmpty) {
                        Fluttertoast.showToast(
                            msg: "Please Note Add First.",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      } else {
                        setState(() {
                          isDataDeleting = false;
                        });
                        firestoreDb.deleteNote(noteData.uid).then((value) {
                          Fluttertoast.showToast(
                              msg: "Note Delete.",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0);
                          noteData = NoteModel();
                          setState(() {
                            isDataDeleting = true;
                          });
                          Navigator.pop(context);
                        });
                      }
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.redAccent,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: 35.0,
                        height: 35.0,
                        child: CircularProgressIndicator()),
                  ),
          ),
        ],
        backgroundColor: const Color(0xFF101010),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xFF2E2E2E),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    noteData.date.isEmpty
                        ? "No Note Added."
                        : '${noteData.date}',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  top: 6.0,
                  right: 16.0,
                  bottom: 6.0,
                ),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  controller: _noteController,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    hintText: 'Enter Note..',
                    hintStyle: const TextStyle(
                      color: Colors.white30,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFF363636)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF292929),
                  ),
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  noteData.date = getFormattedDate();
                  noteData.note = _noteController.text.toString();
                  if (noteData.uid.isEmpty) {
                    noteData.uid = userData.userUid + widget.subUid;
                    firestoreDb.addNote(noteData, noteData.uid).then((value) {
                      Fluttertoast.showToast(
                          msg: "Note Save.",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    });
                  } else {
                    firestoreDb
                        .updateNote(noteData, noteData.uid)
                        .then((value) {
                      Fluttertoast.showToast(
                          msg: "Note Update.",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    });
                  }
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: const Size(double.infinity, 48.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                ),
                child: Text(
                  noteData.uid.isEmpty ? 'Save' : 'Update',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

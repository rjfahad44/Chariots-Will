

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreDb{

  Future<void> addUserData(String name, String email, String signInBy,String userUid) async {
    final collection = FirebaseFirestore.instance.collection('Users');
    final userDoc = collection.doc(userUid);
    await userDoc.set({
      'signInBy': signInBy,
      'userName': name,
      'email': email,
      'userUid': userUid,
    });
  }

  Future<void> setDataWithId(String documentId, String data) async {
    final collection = FirebaseFirestore.instance.collection('Users');
    await collection.doc(documentId).set({'data': data});
    print('Set data for Users ID: $documentId');
  }

  Future<void> getUserData() async {
    final collection = FirebaseFirestore.instance.collection('Users');
    final querySnapshot = await collection.get();

    for (var doc in querySnapshot.docs) {
      final name = doc['name'];
      final age = doc['age'];
      print('User: $doc');
    }
  }
}
import 'package:cloud_firestore/cloud_firestore.dart';

import '../Screens/HomePage.dart';
import '../model/MediaDataModel.dart';
import '../model/NoteModel.dart';

class FirestoreDb{

  Future<void> addMediaData(MediaDataModel mediaData, int position) async {
    final CollectionReference mediaCollection = FirebaseFirestore.instance.collection('Worship');
    final docRef = mediaCollection.doc('$position');
    Map<String, dynamic> jsonData = mediaData.toJson();
    print("insert data : $jsonData \n");
    await docRef.set(jsonData);
  }

  Future<void> addNote(NoteModel note, String uid) async {
    try {
      final collection = FirebaseFirestore.instance.collection("UsersNote");
      final noteDoc = collection.doc(uid);
      Map<String, dynamic> jsonData = note.toJson();
      print('Add adding... : $jsonData');
      await noteDoc.set(jsonData);
      print('Note added successfully');
    } catch (e) {
      print('Error adding note: $e');
    }
  }

  Future<void> updateNote(NoteModel note, String uid) async {
    final CollectionReference noteCollection = FirebaseFirestore.instance.collection('UsersNote');
    final docRef = noteCollection.doc(uid);
    Map<String, dynamic> jsonData = note.toJson();
    print('Update Note : ${jsonData}');
    await docRef.update(jsonData);
  }

  Future<void> deleteNote(String uid) async {
    final CollectionReference noteCollection = FirebaseFirestore.instance.collection('UsersNote');
    final docRef = noteCollection.doc(uid);
    print('Delete Note : ${docRef}');
    await docRef.delete();
  }

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

Future<void> addMultiCollectionData(Map<String, dynamic> data, String collectionName) async {
  final collection = FirebaseFirestore.instance.collection(collectionName);
  final docRef = collection.doc('1').collection('E').doc();
  await docRef.set(data);
}
import 'package:cloud_firestore/cloud_firestore.dart';

class UserData {
  final String email;
  final String signInBy;
  final String userName;
  final String userUid;

  UserData({
    this.email = '',
    this.signInBy = '',
    this.userName = '',
    this.userUid = '',
  });

  factory UserData.fromJson(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return UserData(
      email: data['email'] ?? '',
      signInBy: data['signInBy'] ?? '',
      userName: data['userName'] ?? '',
      userUid: data['userUid'] ?? '',
    );
  }
}
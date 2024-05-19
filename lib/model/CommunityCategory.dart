import 'package:cloud_firestore/cloud_firestore.dart';

class CommunityCategory {
  final String title;
  final String thumb;

  CommunityCategory({
    required this.title,
    required this.thumb,
  });

  factory CommunityCategory.fromJson(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return CommunityCategory(
      title: data['title'] ?? '',
      thumb: data['thumb'] ?? '',
    );
  }
}
import 'package:cloud_firestore/cloud_firestore.dart';

class CommunityTopBanner {
  final String title;
  final String thumb;

  CommunityTopBanner({
    required this.title,
    required this.thumb,
  });

  factory CommunityTopBanner.fromJson(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return CommunityTopBanner(
      title: data['title'] ?? '',
      thumb: data['thumb'] ?? '',
    );
  }
}
import 'package:cloud_firestore/cloud_firestore.dart';

class AudioItem {
  final String title;
  String type;
  final String? description;
  final String? subTitle;
  final String audioUrl;

  AudioItem({
    required this.title,
    required this.type,
    this.description,
    this.subTitle,
    required this.audioUrl,
  });

  Map<String, dynamic> toJson() => {
    'title': title,
    'type': type,
    'description': description,
    'subTitle': subTitle,
    'audioUrl': audioUrl,
  };

  factory AudioItem.fromJson(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return AudioItem(
      title: data['title'] as String,
      type: data['type'] as String,
      description: data['description'] as String,
      subTitle: data['subTitle'] as String,
      audioUrl: data['audioUrl'] as String,
    );
  }

  @override
  String toString() => '{'
      'title: $title, '
      'type: $type, '
      'description: $description, '
      'subTitle: $subTitle, '
      'audioUrl: $audioUrl'
      '}';
}
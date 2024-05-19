class MediaDataModel {
  final String audioUrl;
  final String description;
  final String name;
  final String profileImageUrl;
  final String subTitle;
  final String thumb;
  final String title;
  final String videoUrl;

  MediaDataModel({
    required this.audioUrl,
    required this.description,
    required this.name,
    required this.profileImageUrl,
    required this.subTitle,
    required this.thumb,
    required this.title,
    required this.videoUrl,
  });

  Map<String, dynamic> toJson() => {
    'audioUrl': audioUrl,
    'description': description,
    'name': name,
    'profileImageUrl': profileImageUrl,
    'subTitle': subTitle,
    'thumb': thumb,
    'title': title,
    'videoUrl': videoUrl,
  };

  factory MediaDataModel.fromJson(Map<String, dynamic> json) {
    return MediaDataModel(
      audioUrl: json['audioUrl'] as String,
      description: json['description'] as String,
      name: json['name'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
      subTitle: json['subTitle'] as String,
      thumb: json['thumb'] as String,
      title: json['title'] as String,
      videoUrl: json['videoUrl'] as String,
    );
  }
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import '../model/MediaDataModel.dart';
import '../utils/VideoPlayDialog.dart';
import 'dart:typed_data';

class CategoryDataShowScreen extends StatefulWidget {
  const CategoryDataShowScreen({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _categoryDataShowScreenState();
}

class _categoryDataShowScreenState extends State<CategoryDataShowScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<MediaDataModel> mediaDataModelList = [];
  late List<bool> _isExpandedList = [];
  List<Uint8List?> _thumbnails = [];
  bool isDataLoad = false;

  @override
  void initState() {
    super.initState();
    getData().then((value) {
      setState(() {
        mediaDataModelList = value;
        mediaDataModelList.sort((a, b) => a.position - b.position);
        _isExpandedList = List.generate(mediaDataModelList.length, (index) => false);
        _thumbnails = List<Uint8List?>.filled(mediaDataModelList.length, null);
        _generateThumbnails();
        isDataLoad = true;
      });
    });
  }

  Future<List<MediaDataModel>> getData() async {
    final communityDataListCollection = await _firestore.collection(widget.title).get();
    List<MediaDataModel> mediaDataList = [];
    for (var document in communityDataListCollection.docs) {
      final data = document.data();
      print('communityDataSnapshot : $data');
      final mediaData = MediaDataModel.fromJson(data);
      mediaDataList.add(mediaData);
    }
    return mediaDataList;
  }

  Future<void> _generateThumbnails() async {
    for (int i = 0; i < mediaDataModelList.length; i++) {
      final model = mediaDataModelList[i];
      final Uint8List? thumbnail = await _generateThumbnail(model.videoUrl);
      setState(() {
        _thumbnails[i] = thumbnail;
      });
    }
  }

  Future<Uint8List?> _generateThumbnail(String videoUrl) async {
    try {
      final Uint8List? thumbnail = await VideoThumbnail.thumbnailData(
        video: videoUrl,
        imageFormat: ImageFormat.PNG,
        maxWidth: 720,
        quality: 60,
      );
      return thumbnail;
    } catch (e) {
      print('Error generating thumbnail: $e');
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
        backgroundColor: const Color(0xFF101010),
      ),
      body: isDataLoad?
      mediaDataModelList.isNotEmpty ?
      Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: mediaDataModelList.length,
                itemBuilder: (context, index) {
                  final model = mediaDataModelList[index];
                  return buildVerticalListItem(model, index);
                },
              ),
            ),
          ],
        ),
      ): Align(
        alignment: Alignment.center,
        child: Text(
          "Empty!!",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ) :
      Align(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget buildVerticalListItem(MediaDataModel model, int index) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 10, right: 10, bottom: 10),
              child: CircleAvatar(
                backgroundImage: NetworkImage(model.profileImageUrl),
                radius: 14,
              ),
            ),
            Expanded(
              child: Text(
                model.name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w200),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10, right: 10, bottom: 10),
          child: Column(
            children: [
              Text(
                model.description,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400),
                maxLines: _isExpandedList[index] ? null : 3,
                overflow: _isExpandedList[index] ? TextOverflow.visible : TextOverflow.ellipsis,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isExpandedList[index] = !_isExpandedList[index];
                    });
                  },
                  child: Text(
                    _isExpandedList[index] ? 'Read Less' : 'Read More..',
                    style: const TextStyle(
                      color: Colors.orange,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    showVideoPlayerDialog(context, model.videoUrl);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                    height: 180.0,
                    decoration: BoxDecoration(
                      image: _thumbnails[index] != null
                          ? DecorationImage(
                        image: MemoryImage(_thumbnails[index]!),
                        fit: BoxFit.cover,
                      )
                          : null,
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color(0xFF2E2E2E),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Icon(
                        size: 60.0,
                        Icons.play_circle_outline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ],
    );
  }
}

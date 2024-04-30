import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_project/CustomBottomSheetsDialog.dart';

import 'AudioPlayDialog.dart';
import 'VideoPlayDialog.dart';

class Community extends StatefulWidget {
  const Community({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {

  bool dataLoaded = false;

  List<HorizontalListDataModel> horizontalListModel = [
    const HorizontalListDataModel(
      id: 0,
      title: "Prayer",
      imageUrl: "assets/images/h_list_item_image_demo.png",
    ),
    const HorizontalListDataModel(
      id: 1,
      title: "Worship",
      imageUrl: "assets/images/h_list_item_image_demo.png",
    ),
    const HorizontalListDataModel(
      id: 2,
      title: "Reviews",
      imageUrl: "assets/images/h_list_item_image_demo.png",
    ),
    const HorizontalListDataModel(
      id: 3,
      title: "Devotion",
      imageUrl: "assets/images/h_list_item_image_demo.png",
    ),
    const HorizontalListDataModel(
      id: 4,
      title: "Demo",
      imageUrl: "assets/images/h_list_item_image_demo.png",
    ),
  ];

  List<VerticalListDataModel> verticalListModel = [
    const VerticalListDataModel(
      id: 0,
      name: "Jose Campbell",
      profileImage: "assets/images/profile_image_demo.png",
      description:
          "For I know the plans I have for you, declares the Lord, plans for welfare and not for evil, to give you a future and a hope.",
      audioUrl: "media_files/rabba_main_toh_mar_gaya_oye.mp3",
      videoUrl: "assets/media_files/demo_video.mp4",
    ),
    const VerticalListDataModel(
      id: 1,
      name: "Jose Campbell",
      profileImage: "assets/images/profile_image_demo.png",
      description:
          "For I know the plans I have for you, declares the Lord, plans for welfare and not for evil, to give you a future and a hope.",
      audioUrl: "media_files/le_aaunga.mp3",
      videoUrl: "assets/media_files/demo_video.mp4",
    ),
    const VerticalListDataModel(
      id: 2,
      name: "Jose Campbell",
      profileImage: "assets/images/profile_image_demo.png",
      description:
          "For I know the plans I have for you, declares the Lord, plans for welfare and not for evil, to give you a future and a hope.",
      audioUrl: "media_files/rabba_main_toh_mar_gaya_oye.mp3",
      videoUrl: "assets/media_files/demo_video.mp4",
    ),
    const VerticalListDataModel(
      id: 0,
      name: "Jose Campbell",
      profileImage: "assets/images/profile_image_demo.png",
      description:
          "For I know the plans I have for you, declares the Lord, plans for welfare and not for evil, to give you a future and a hope.",
      audioUrl: "media_files/le_aaunga.mp3",
      videoUrl: "assets/media_files/demo_video.mp4",
    ),
    const VerticalListDataModel(
      id: 3,
      name: "Jose Campbell",
      profileImage: "assets/images/profile_image_demo.png",
      description:
          "For I know the plans I have for you, declares the Lord, plans for welfare and not for evil, to give you a future and a hope.",
      audioUrl: "media_files/rabba_main_toh_mar_gaya_oye.mp3",
      videoUrl: "assets/media_files/demo_video.mp4",
    ),
  ];

  List<MediaDataModel> mediaDataModelList = [];
  MediaDataModel? dataModel;

  late List<bool> _isExpandedList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final publicDataCollection = FirebaseFirestore.instance.collection('publicData');
    try {
      List<MediaDataModel> mediaDataList = [];
      final querySnapshot = await publicDataCollection.get();
      for (var document in querySnapshot.docs) {
        final data = document.data();
        print(data);
        final mediaData = MediaDataModel.fromJson(data);
        dataModel = mediaData;
        mediaDataList.add(mediaData);
        print(mediaData.title);
      }
      setState(() {
        dataLoaded = true;
        mediaDataModelList = mediaDataList;
        _isExpandedList = List.generate(mediaDataModelList.length, (index) => false);
      });

    } catch (error) {
      print(error);
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
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color(0xFF101010),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context, false);
          },
        ),
      ),
      body: Column(
        children: [
          //Top ImageView
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                width: double.infinity,
                height: 150.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/community_top_image_demo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        color: const Color(0xFF33363C),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 10, top: 5, right: 10, bottom: 5),
                          child: Text("Welcome to the Community!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 10.0,
          ),

          //horizontal ListView
          SizedBox(
            height: 115.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: horizontalListModel.length,
              itemBuilder: (context, index) {
                final model = horizontalListModel[index];
                return buildHorizontalImageWithTitleListItem(model);
              },
            ),
          ),

          const SizedBox(
            height: 10.0,
          ),

          dataLoaded ?
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Color(0xFF1F1F1F),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 45.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.zero),
                          color: Color(0xFF2E2E2E),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.only(
                                left: 16, top: 6, right: 16, bottom: 6),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Latest activity",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: false,
                          scrollDirection: Axis.vertical,
                          itemCount: mediaDataModelList.length,
                          itemBuilder: (context, index) {
                            final model = mediaDataModelList[index];

                            return buildVerticalListItem(model, index);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              //Add your load more logic
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFF333333),
                            minimumSize: const Size(double.infinity, 40.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                          child: const Text(
                            'Load More',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ) : const Center(
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }

  Widget buildHorizontalImageWithTitleListItem(HorizontalListDataModel model) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  model.imageUrl,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.error),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Expanded(
                child: Text(
                  model.title,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.justify,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
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
                backgroundImage: NetworkImage(model.profileImage),
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
            )),
          ],
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 10.0, top: 10, right: 10, bottom: 10),
          child: Column(
            children: [
              Text(
                model.description,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400),
                maxLines: _isExpandedList[index] ? null : 3,
                overflow: _isExpandedList[index]
                    ? TextOverflow.visible
                    : TextOverflow.ellipsis,
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
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        showAudioPlayerDialog(context, model.audioUrl);
                      },
                      icon: const Icon(
                        Icons.volume_up_outlined,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Play Audio',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 48.0),
                        side: const BorderSide(color: Color(0xFF383838)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        showVideoPlayerDialog(context, model.videoUrl);
                      },
                      icon: const Icon(
                        Icons.play_circle_outline,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Play Video',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 48.0),
                        side: const BorderSide(color: Color(0xFF383838)),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8.0), // Adjust as desired
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HorizontalListDataModel {
  final int id;
  final String title;
  final String imageUrl;

  const HorizontalListDataModel({
    required this.id,
    required this.title,
    required this.imageUrl,
  });
}

class VerticalListDataModel {
  final int id;
  final String name;
  final String profileImage;
  final String description;
  final String audioUrl;
  final String videoUrl;

  const VerticalListDataModel({
    required this.id,
    required this.name,
    required this.profileImage,
    required this.description,
    required this.audioUrl,
    required this.videoUrl,
  });
}

class MediaDataModel {
  //final int id;
  final String title;
  final String description;
  final String thumb;
  final String audioUrl;
  final String videoUrl;
  final String profileImage;
  final String name;

  MediaDataModel({
    //required this.id,
    required this.title,
    required this.description,
    required this.thumb,
    required this.audioUrl,
    required this.videoUrl,
    required this.profileImage,
    required this.name,
  });

  factory MediaDataModel.fromJson(Map<String, dynamic> json) {
    return MediaDataModel(
      //id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      thumb: json['thumb'] as String,
      audioUrl: json['audioUrl'] as String,
      videoUrl: json['videoUrl'] as String,
      profileImage: json['profileImage'] as String,
      name: json['name'] as String,
    );
  }
}


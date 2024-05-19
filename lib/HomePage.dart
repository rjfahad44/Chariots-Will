import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_project/PrefsDb.dart';
import 'package:flutter_demo_project/SignInScreen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'AudioPlayDialog.dart';
import 'CustomCalendar.dart';
import 'FirstFivePages.dart';
import 'OtherPages.dart';
import 'VideoPlayDialog.dart';
import 'model/CommunityCategory.dart';
import 'model/CommunityTopBanner.dart';
import 'model/MediaDataModel.dart';
import 'model/UserData.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isDataLoaded = false;
  List<MediaDataModel> mediaDataModelList = [];
  List<CommunityCategory> categoryDataModelList = [];
  MediaDataModel? dataModel;
  late CommunityTopBanner pageTopBannerData;
  late List<bool> _isExpandedList = [];

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  Future<void> addMediaData(MediaDataModel mediaData, int position) async {
    final CollectionReference mediaCollection =
        FirebaseFirestore.instance.collection('CommunityData');
    final docRef = mediaCollection.doc('$position');
    Map<String, dynamic> jsonData = mediaData.toJson();
    await docRef.set(jsonData);
  }

  Future<void> fetchData() async {
    // for(int i=0; i<addDataList.length; i++) {
    //   var data = addDataList[i];
    //   addMediaData(data, i+1);
    // };
    final userInfoDataCollection = _firestore.collection('Users');
    final pageTopBannerDataCollection =
        _firestore.collection('CommunityPageTopBannerData');
    final communityCategoriesCollection =
        _firestore.collection('CommunityCategories');
    final communityDataListCollection = _firestore.collection('CommunityData');
    try {
      final userInfoDataSnapshot = await userInfoDataCollection.get();
      final pageTopBannerDataSnapshot = await pageTopBannerDataCollection.get();
      final communityCategoriesDataSnapshot =
          await communityCategoriesCollection.get();
      final communityDataSnapshot = await communityDataListCollection.get();

      for (var doc in userInfoDataSnapshot.docs) {
        final data = doc.data();
        print('userInfoDataSnapshot : $data');
        final user = UserData.fromJson(doc);
        print('User userName : ${user.userName} \n');
      }

      for (var doc in pageTopBannerDataSnapshot.docs) {
        final data = doc.data();
        print('pageTopBannerDataSnapshot : $data');
        final topBannerData = CommunityTopBanner.fromJson(doc);
        setState(() {
          pageTopBannerData = topBannerData;
        });
        print('topBannerData title: ${topBannerData.title} \n');
      }

      List<CommunityCategory> categoryDataList = [];
      for (var doc in communityCategoriesDataSnapshot.docs) {
        final data = doc.data();
        print('communityCategoriesDataSnapshot : $data');
        final category = CommunityCategory.fromJson(doc);
        categoryDataList.add(category);
        print('Category name : ${category.title} \n');
      }

      List<MediaDataModel> mediaDataList = [];
      for (var document in communityDataSnapshot.docs) {
        final data = document.data();
        print('communityDataSnapshot : $data');
        final mediaData = MediaDataModel.fromJson(data);
        dataModel = mediaData;
        mediaDataList.add(mediaData);
        print(mediaData.title);
      }

      setState(() {
        _isDataLoaded = true;
        mediaDataModelList = mediaDataList;
        categoryDataModelList = categoryDataList;
        _isExpandedList =
            List.generate(mediaDataModelList.length, (index) => false);
      });
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = Provider.of<GlobalKey<ScaffoldState>>(context);

    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) async {
        if (didPop) {
          Navigator.pop(context, true);
        } else {
          Navigator.pop(context, false);
        }
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF101010),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF101010),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        drawer: _buildDrawer(scaffoldKey),
        body: _isDataLoaded
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    //Top ImageView
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Container(
                          width: double.infinity,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(pageTopBannerData.thumb),
                              //AssetImage('assets/images/community_top_image_demo.png'),
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
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 5, right: 10, bottom: 5),
                                    child: Text(pageTopBannerData.title,
                                        style: const TextStyle(
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

                    CustomCalendar(),

                    //horizontal ListView
                    SizedBox(
                      height: 115.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categoryDataModelList.length,
                        itemBuilder: (context, index) {
                          final model = categoryDataModelList[index];
                          return buildHorizontalImageWithTitleListItem(model);
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
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
                              ListView.builder(
                                shrinkWrap: true,
                                primary: false,
                                scrollDirection: Axis.vertical,
                                itemCount: mediaDataModelList.length,
                                itemBuilder: (context, index) {
                                  final model = mediaDataModelList[index];

                                  return buildVerticalListItem(model, index);
                                },
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
                                    minimumSize:
                                        const Size(double.infinity, 40.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
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
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }

  Widget _buildDrawer(GlobalKey<ScaffoldState> scaffoldKey) {
    final items = [
      'Promises',
      'Dedication',
      'Testimonials',
      'Evangelism',
      'Baptism',
      'Volunteer',
      'Prayer',
      'Territory',
      'Souls spirit and body',
      'Discipleship',
      'Encounter',
      'Home Fellowship',
    ];

    return Drawer(
      backgroundColor: const Color(0xff1C1C1C),
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/demo_profile.png'),
                      radius: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _auth.currentUser?.displayName ?? 'No name',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 0.0),
                        Text(
                          _auth.currentUser?.email ?? "Email is empty!",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final String item = items[index];
                  return ListTile(
                    title: Text(item,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.white)),
                    onTap: () {
                      scaffoldKey.currentState?.closeDrawer();
                      goTo(item);
                    },
                    dense: true,
                  );
                },
              ),
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: TextButton.icon(
                    icon: const Icon(
                      Icons.exit_to_app,
                      color: Colors.red,
                    ),
                    label: const Text(
                      'Logout',
                      style: TextStyle(fontSize: 12, color: Colors.red),
                    ),
                    onPressed: () {
                      _auth.signOut().then((value) async {
                        await PrefsDb()
                            .removeDataSP(_auth.currentUser?.email ?? "");
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInScreen(),
                            ));
                      });
                      scaffoldKey.currentState?.closeDrawer();
                    },
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }

  void goTo(String item) {
    switch (item) {
      case "Promises":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FirstFivePages(title: "Promises"),
            ));
        break;
      case "Dedication":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FirstFivePages(title: "Dedication"),
            ));
        break;
      case "Testimonials":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FirstFivePages(title: "Testimonials"),
            ));
        break;
      case "Evangelism":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FirstFivePages(title: "Evangelism"),
            ));
        break;
      case "Baptism":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FirstFivePages(title: "Baptism"),
            ));
        break;
      case "Volunteer":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OtherPages(title: "Volunteer"),
            ));
        break;
      case "Prayer":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OtherPages(title: "Prayer"),
            ));
        break;
      case "Territory":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OtherPages(title: "Territory"),
            ));
        break;
      case "Souls spirit and body":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const OtherPages(title: "Souls spirit and body"),
            ));
        break;
      case "Discipleship":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OtherPages(title: "Discipleship"),
            ));
        break;
      case "Encounter":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OtherPages(title: "Encounter"),
            ));
        break;
      case "Home Fellowship":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OtherPages(title: "Home Fellowship"),
            ));
        break;
      default:
        "Handle default item click here";
    }
  }

  void goToPage(Widget page, BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  Widget buildHorizontalImageWithTitleListItem(CommunityCategory model) {
    return GestureDetector(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    model.thumb,
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
      ),
      onTap: () {
        Fluttertoast.showToast(
            msg:
                "What should I do to click on the items that are not clear to me?",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      },
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

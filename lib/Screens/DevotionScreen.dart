import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:intl/intl.dart';
import '../model/BookTextLine.dart';
import '../utils/BibleBookData.dart';
import '../utils/Constants.dart';
import '../utils/CustomCalendar.dart';
import 'NoteScreen.dart';

class DevotionScreen extends StatefulWidget {
  const DevotionScreen({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _DevotionScreenState();
}

class _DevotionScreenState extends State<DevotionScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  DateTime todayDay = DateTime.now();
  String selectedMonth = "";
  ValueNotifier<bool> isPlayPause = ValueNotifier(false);
  List<BookTextLine> dataList = [];

  final FlutterTts flutterTts = FlutterTts();
  int currentLineIndex = -1;
  int currentBookIndex = -1;
  bool isPaused = false;

  @override
  void initState() {
    setState(() {
      isPlayPause = ValueNotifier(false);
      todayDay = DateTime.now();
      selectedMonth = DateFormat("MMMM").format(DateTime.now());
    });
    loadData();
    super.initState();
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  void startReading(List<String> lines, int lineIndex, int bookIndex) async {
    setState(() {
      currentBookIndex = bookIndex;
    });

    for (int i = lineIndex; i < lines.length; i++) {
      if (isPaused) {
        break;
      }

      setState(() {
        currentLineIndex = i;
        isPlayPause.value = true;
      });

      await flutterTts.speak(lines[i]);
      await flutterTts.awaitSpeakCompletion(true);
      await Future.delayed(Duration(seconds: 1));
    }

    setState(() {
      currentLineIndex = -1;
      currentBookIndex = -1;
      isPlayPause.value = false;
    });
  }

  void pauseReading() {
    setState(() {
      isPaused = true;
      isPlayPause.value = false;
      flutterTts.stop();
    });
  }

  void resumeReading(List<String> lines, int lineIndex, int bookIndex) {
    setState(() {
      isPaused = false;
    });
    startReading(lines, lineIndex, bookIndex);
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
        actions: [
          IconButton(
            onPressed: () {
              goToPage(
                  NoteScreen(
                      title: "Note",
                      subUid:
                      "${widget.title}-${DateFormat('dd-MMMM').format(todayDay)}"),
                  true,
                  context);
            },
            icon: Icon(
              Icons.note_alt_outlined,
              color: Colors.white,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: const Color(0xFF101010),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              CustomCalendar(
                dateSelectCallBack: (DateTime dateTime) {
                  setState(() {
                    todayDay = dateTime;
                  });
                  var weekName = DateFormat('EEEE').format(dateTime);
                  var monthName = DateFormat('MMMM').format(dateTime);

                  print("Selected Date : ${todayDay.day}, $weekName, $monthName ");
                  loadData();
                },
                monthSelectCallBack: (DateTime dateTime) async {
                  setState(() {
                    todayDay = dateTime;
                    selectedMonth = DateFormat('MMMM').format(dateTime);
                  });
                  var day = dateTime.day;
                  var weekName = DateFormat('EEEE').format(dateTime);
                  print("Selected Month : $day, ${todayDay.day}, $weekName, $selectedMonth ");
                  loadData();
                },
              ),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: dataList.length,
                itemBuilder: (context, bookIndex) {
                  var book = dataList[bookIndex];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Color(0xFF2E2E2E),
                      ),
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                book.title,
                                style: const TextStyle(
                                  color: Colors.orange,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ValueListenableBuilder<bool>(
                                valueListenable: isPlayPause,
                                builder: (context, value, child) {
                                  return IconButton(
                                    onPressed: () {
                                      if (value && currentBookIndex == bookIndex) {
                                        pauseReading();
                                      } else {
                                        resumeReading(book.lines, currentLineIndex == -1 ? 0 : currentLineIndex, bookIndex);
                                      }
                                      isPlayPause.value = !value;
                                    },
                                    icon: Icon(
                                      value && currentBookIndex == bookIndex ? Icons.pause : Icons.play_arrow,
                                      size: 40.0,
                                      color: Colors.white,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                book.subTitle,
                                style: const TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: book.lines.length,
                            itemBuilder: (context, lineIndex) {
                              var line = book.lines[lineIndex];
                              return ValueListenableBuilder(
                                  valueListenable: isPlayPause,
                                builder: (context, value, child){
                                    return Container(
                                      child: GestureDetector(
                                        onTap: () {
                                          if (value && currentBookIndex == bookIndex) {
                                            pauseReading();
                                          } else {
                                            resumeReading(book.lines, lineIndex, bookIndex);
                                          }
                                          isPlayPause.value = !value;
                                        },
                                        child: Text(
                                          line,
                                          style: TextStyle(
                                            color: currentLineIndex == lineIndex && currentBookIndex == bookIndex
                                                ? Colors.yellow
                                                : Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                    );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void loadData() {
    setState(() {
      dataList = bookTextLine.where((item) => item.date == DateFormat('dd-MMMM').format(todayDay)).toList();
    });
  }
}

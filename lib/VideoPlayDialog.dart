import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void showVideoPlayerDialog(BuildContext context, String videoUrl) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return VideoPlayerDialog(videoUrl: videoUrl);
    },
  );
}

class VideoPlayerDialog extends StatefulWidget {
  final String videoUrl;

  const VideoPlayerDialog({super.key, required this.videoUrl});

  @override
  State<StatefulWidget> createState() => _VideoPlayerDialogState();
}

class _VideoPlayerDialogState extends State<VideoPlayerDialog> {
  var isPlayState = false;
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    _controller.initialize().then((_) {
      if (mounted) {
        setState(() {
          if (_controller.value.isPlaying) {
            isPlayState = false;
            _controller.pause();
          } else {
            isPlayState = true;
            _controller.play();
          }
        });
      }
    }).catchError((error) {
      print("Error initializing video player: $error");
    });

    _controller.addListener(() {
      setState(() {}); // Update the UI when the video position changes
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (mounted) {
      _controller.dispose();
    }
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = duration.inHours;
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return hours > 0 ? '$hours:$minutes:$seconds' : '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFF383838),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Video Player',
            style: TextStyle(color: Colors.white),
          ),
          GestureDetector(
            onTap: () {
              if (mounted) {
                Navigator.pop(context);
              }
            },
            child: Icon(
              Icons.close,
              size: 30.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width - 30,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              height: 200.0,
              child: _controller.value.isInitialized
                  ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
                  : const Center(
                child: CircularProgressIndicator(),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            _controller.value.isInitialized
                ? Column(
              children: [
                VideoProgressIndicator(
                  _controller,
                  allowScrubbing: true,
                  colors: VideoProgressColors(
                    playedColor: Colors.red,
                    backgroundColor: Colors.grey,
                    bufferedColor: Colors.lightGreen,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        formatDuration(_controller.value.position),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        formatDuration(_controller.value.duration),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
                : Container(),
            const SizedBox(
              height: 10.0,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_controller.value.isPlaying) {
                    isPlayState = false;
                    _controller.pause();
                  } else {
                    isPlayState = true;
                    _controller.play();
                  }
                });
              },
              child: Visibility(
                visible: _controller.value.isInitialized,
                child: Icon(
                  isPlayState ? Icons.pause : Icons.play_arrow,
                  size: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      insetPadding: EdgeInsets.zero,
      contentPadding: const EdgeInsets.symmetric(vertical: 8),
    );
  }
}

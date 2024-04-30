import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void showVideoPlayerDialog(BuildContext context, String videoUrl) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return VideoPlayerDialog(
        videoUrl: videoUrl,
      );
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
  var videoPlayerControllerSet = false;

  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.asset('assets/media_files/demo_video.mp4');
    print("Inside into initState methode => ${widget.videoUrl}");
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    _controller.initialize().then((_) {
      if (mounted) {
        setState(() {
          if (_controller.value.isPlaying) {
            isPlayState = false;
            _controller.pause();
            print("pause");
          } else {
            isPlayState = true;
            _controller.play();
            print("play");
          }
        });
      }
    }).catchError((error){
      print("Error initializing video player: $error");
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (mounted) {
      _controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {

    return AlertDialog(
        backgroundColor: const Color(0xFF383838),
        title: const Text(
          'Video Player',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        content: Column(
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
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_controller.value.isPlaying) {
                    isPlayState = false;
                    _controller.pause();
                    print("pause");
                  } else {
                    isPlayState = true;
                    _controller.play();
                    print("play");
                  }
                });
              },
              child: Visibility(
                visible:  _controller.value.isInitialized,
                child: Icon(
                  isPlayState ? Icons.pause : Icons.play_arrow,
                  size: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }
}

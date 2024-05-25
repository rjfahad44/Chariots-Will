import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void showAudioPlayerDialog(BuildContext context, String audioUrl) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AudioPlayerDialog(
        audioUrl: audioUrl,
      );
    },
  );
}

class AudioPlayerDialog extends StatefulWidget {
  final String audioUrl;

  const AudioPlayerDialog({super.key, required this.audioUrl});

  @override
  State<StatefulWidget> createState() => _AudioPlayerDialogState();
}

class _AudioPlayerDialogState extends State<AudioPlayerDialog> {
  late AudioPlayer audioPlayer;
  PlayerState audioPlayerState = PlayerState.stopped;
  bool isPlayerReady = false;
  bool isPlayPause = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    _play();
    audioPlayer.onPlayerStateChanged.listen((PlayerState state) {
      if (mounted) {
        setState(() {
          audioPlayerState = state;
        });
      }
    });

    audioPlayer.onDurationChanged.listen((Duration d) {
      if (mounted) {
        setState(() {
          duration = d;
        });
      }
    });

    audioPlayer.onPositionChanged.listen((Duration p) {
      if (mounted) {
        setState(() {
          position = p;
        });
      }
    });
  }

  @override
  Future<void> dispose() async {
    if (audioPlayerState != PlayerState.stopped) {
      _stop();
    }
    audioPlayer.release();
    super.dispose();
  }

  Future<void> _play() async {
    try {
      setState(() {
        isPlayPause = true;
      });
      await audioPlayer.play(UrlSource(widget.audioUrl));
      setState(() {
        isPlayerReady = true;
      });
    } on FormatException catch (e) {
      setState(() {
        isPlayPause = false;
        isPlayerReady = false;
      });
      print("Error playing audio: $e");
    }
  }

  Future<void> _pause() async {
    setState(() {
      isPlayPause = false;
    });
    await audioPlayer.pause();
  }

  Future<void> _stop() async {
    setState(() {
      isPlayPause = false;
    });
    await audioPlayer.stop();
    // if (mounted) {
    //   Navigator.pop(context);
    // }
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      alignment: Alignment.bottomCenter,
      backgroundColor: const Color(0xFF383838),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Audio Player',
            style: TextStyle(color: Colors.white),
          ),
          GestureDetector(
            onTap: () {
              // if (audioPlayerState != PlayerState.stopped) {
              //   _stop();
              // }
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
      content: isPlayerReady
          ? SizedBox(
        width: MediaQuery.of(context).size.width - 30,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Slider(
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
              value: position.inSeconds.toDouble(),
              max: duration.inSeconds.toDouble(),
              onChanged: (double value) {
                setState(() {
                  audioPlayer.seek(Duration(seconds: value.toInt()));
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _formatDuration(position),
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    _formatDuration(duration),
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (audioPlayerState == PlayerState.stopped ||
                    audioPlayerState == PlayerState.paused) {
                  _play();
                }
                if (audioPlayerState == PlayerState.playing) {
                  _pause();
                }
              },
              child: Icon(
                isPlayPause ? Icons.pause : Icons.play_arrow,
                size: 40.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      )
          : SizedBox(
        width: MediaQuery.of(context).size.width - 30,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircularProgressIndicator(),
          ],
        ),
      ),
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.symmetric(vertical: 8),
    );
  }
}

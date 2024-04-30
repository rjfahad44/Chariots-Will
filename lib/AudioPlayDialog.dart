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

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    audioPlayer.onPlayerStateChanged.listen((PlayerState state) {
      if (mounted) {
        setState(() {
          audioPlayerState = state;
        });
      }
    });
  }

  @override
  void dispose() {
    audioPlayer.release();
    super.dispose();
  }

  Future<void> _play() async {
    try {
      //await audioPlayer.play(AssetSource(widget.audioUrl));
      await audioPlayer.play(UrlSource(widget.audioUrl));
    } on FormatException catch (e) {
      print("Error playing audio: $e");
    }
  }

  Future<void> _pause() async {
    await audioPlayer.pause();
  }

  Future<void> _stop() async {
    await audioPlayer.stop();
    if (mounted) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFF383838),
      title: const Text('Audio Player', style: TextStyle(color: Colors.white, ),),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (audioPlayerState == PlayerState.stopped)
            ElevatedButton(
              onPressed: _play,
              child: const Text('Play'),
            ),
          if (audioPlayerState == PlayerState.playing)
            ElevatedButton(
              onPressed: _pause,
              child: const Text('Pause'),
            ),
          if (audioPlayerState == PlayerState.paused)
            ElevatedButton(
              onPressed: _play,
              child: const Text('Resume'),
            ),
          if (audioPlayerState != PlayerState.stopped)
            ElevatedButton(
              onPressed: _stop,
              child: const Text('Stop'),
            ),
        ],
      ),
    );
  }
}

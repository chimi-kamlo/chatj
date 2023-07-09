import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

// ignore: must_be_immutable
class VideoPlayerItem extends StatefulWidget {
  String videoUrl;
  VideoPlayerItem({super.key, required this.videoUrl});

  @override
  State<VideoPlayerItem> createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    
    super.initState();
    videoPlayerController = VideoPlayerController.networkUrl(widget.videoUrl as Uri )
      ..initialize().then((value) => {
            videoPlayerController.play(),
          });
  }

  @override
  void dispose() {
   
    super.dispose();
    videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: mediaQuery.width,
      height: mediaQuery.height,
      color: Colors.black,
      child: VideoPlayer(videoPlayerController),
    );
  }
}

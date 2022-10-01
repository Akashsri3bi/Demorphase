import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:space/screens/home.dart';
import 'package:video_player/video_player.dart';

class Landing_Screen extends StatefulWidget {
  const Landing_Screen({
    Key? key,
  }) : super(key: key);

  @override
  State<Landing_Screen> createState() => _Landing_ScreenState();
}

class _Landing_ScreenState extends State<Landing_Screen> {
  final VideoPlayerController videoPlayerController =
      VideoPlayerController.asset("assets/vid1.mp4");

  ChewieController? chewieController;

  @override
  void initState() {
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        autoPlay: true,
        looping: true,
        aspectRatio: 19 / 9,
        autoInitialize: true,
        showControls: false);
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Chewie(controller: chewieController!),
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Home())));
            },
            child: Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/button.png'))),
            ),
          ),
        ),
      ]),
    );
  }
}

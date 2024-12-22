import 'package:flutter/material.dart';
import 'package:flutter_reels_viewer/flutter_reels_viewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ReelsPage(),
    );
  }
}

class ReelsPage extends StatefulWidget {
  const ReelsPage({super.key});


  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  static List<dynamic> videos = [
    {
      'video': 'https://assets.mixkit.co/videos/39767/39767-720.mp4',
      'image': 'https://assets.mixkit.co/videos/39767/39767-thumb-360-0.jpg'
    },
    {
      'video': 'https://assets.mixkit.co/videos/43392/43392-720.mp4',
      'image': 'https://assets.mixkit.co/videos/43392/43392-thumb-360-0.jpg'
    },
    {
      'video': 'https://assets.mixkit.co/videos/49911/49911-720.mp4',
      'image': 'https://assets.mixkit.co/videos/49911/49911-thumb-360-0.jpg'
    },
    {
      'video': 'https://assets.mixkit.co/videos/40068/40068-720.mp4',
      'image': 'https://assets.mixkit.co/videos/40068/40068-thumb-360-0.jpg'
    },
    {
      'video': 'https://assets.mixkit.co/videos/43785/43785-720.mp4',
      'image': 'https://assets.mixkit.co/videos/43785/43785-thumb-360-0.jpg'
    },
    {
      'video': 'https://assets.mixkit.co/videos/40159/40159-720.mp4',
      'image': 'https://assets.mixkit.co/videos/40159/40159-thumb-360-0.jpg'
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body:
        FlutterReelsViewer.network(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            videoSourceList: videos,
            scrollDirection: Axis.vertical,
            preloadPagesCount: 2,
            videoBoxFit: BoxFit.cover,
            playInLoop: true,
            showControlsOverlay: true,
            showVideoProgressIndicator: true,
            onPageChanged: (videoPlayerController, index) {},
            getCurrentVideoController: (videoPlayerController) {},
            overlayBuilder: (context, index) => MyCustomVideoOverlay(index))
    );
  }
}

class MyCustomVideoOverlay extends StatelessWidget {
  final int index;

  const MyCustomVideoOverlay(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              children: [
                const Spacer(),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          "https://generated.photos/vue-static/home/hero/${(index % 8) + 1}.png"),
                    ),
                    const SizedBox(
                      width: 8.00,
                    ),
                    Text(
                      "@User Name $index",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "A Flutter widget that displays multiple videos in a vertically scrollable list, providing a smooth scrolling experience while watching short videos...",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
          ),
          Wrap(
            alignment: WrapAlignment.end,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 20,
            direction: Axis.vertical,
            children: [
              IconText(
                  const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 38.0,
                  ),
                  "234",
                      () {}),
              IconText(
                  const Icon(
                    Icons.comment,
                    color: Colors.white,
                    size: 38.0,
                  ),
                  "57",
                      () {}),
              IconText(
                  const Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 38.0,
                  ),
                  "342",
                      () {}),
              const Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 38.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final Icon icon;
  final String text;
  final Function onPressed;

  const IconText(this.icon, this.text, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: icon,
          onPressed: () => onPressed,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
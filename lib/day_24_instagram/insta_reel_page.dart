// import 'package:flutter/material.dart';
// import 'package:flutter_reels_viewer/flutter_reels_viewer.dart';
//
// void main() {
//   runApp(MaterialApp(home: ReelsPage(),));
// }
//
// class ReelsPage extends StatelessWidget {
//   const ReelsPage({super.key}
//       );
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const ReelsPage(),
//     );
//   }
// }
//
// class ReelsPagee extends StatefulWidget {
//   const ReelsPagee({super.key});
//
//
//   @override
//   State<ReelsPagee> createState() => _ReelsPageeState();
// }
//
// class _ReelsPageeState extends State<ReelsPagee> {
//   static List<dynamic> videos = [
//     {
//       'video': 'https://assets.mixkit.co/videos/39767/39767-720.mp4',
//       'image': 'https://assets.mixkit.co/videos/39767/39767-thumb-360-0.jpg'
//     },
//     {
//       'video': 'https://assets.mixkit.co/videos/43392/43392-720.mp4',
//       'image': 'https://assets.mixkit.co/videos/43392/43392-thumb-360-0.jpg'
//     },
//     {
//       'video': 'https://assets.mixkit.co/videos/49911/49911-720.mp4',
//       'image': 'https://assets.mixkit.co/videos/49911/49911-thumb-360-0.jpg'
//     },
//     {
//       'video': 'https://assets.mixkit.co/videos/40068/40068-720.mp4',
//       'image': 'https://assets.mixkit.co/videos/40068/40068-thumb-360-0.jpg'
//     },
//     {
//       'video': 'https://assets.mixkit.co/videos/43785/43785-720.mp4',
//       'image': 'https://assets.mixkit.co/videos/43785/43785-thumb-360-0.jpg'
//     },
//     {
//       'video': 'https://assets.mixkit.co/videos/40159/40159-720.mp4',
//       'image': 'https://assets.mixkit.co/videos/40159/40159-thumb-360-0.jpg'
//     }
//   ];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         body:
//         FlutterReelsViewer.network(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             videoSourceList: videos,
//             scrollDirection: Axis.vertical,
//             preloadPagesCount: 2,
//             videoBoxFit: BoxFit.cover,
//             playInLoop: true,
//             showControlsOverlay: true,
//             showVideoProgressIndicator: true,
//             onPageChanged: (videoPlayerController, index) {},
//             getCurrentVideoController: (videoPlayerController) {},
//             overlayBuilder: (context, index) => MyCustomVideoOverlay(index))
//     );
//   }
// }
//
// class MyCustomVideoOverlay extends StatelessWidget {
//   final int index;
//
//   const MyCustomVideoOverlay(this.index, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Expanded(
//             child: Column(
//               children: [
//                 const Spacer(),
//                 Row(
//                   children: [
//                     CircleAvatar(
//                       radius: 24,
//                       backgroundImage: NetworkImage(
//                           "https://generated.photos/vue-static/home/hero/${(index % 8) + 1}.png"),
//                     ),
//                     const SizedBox(
//                       width: 8.00,
//                     ),
//                     Text(
//                       "@User Name $index",
//                       style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 const Text(
//                   "A Flutter widget that displays multiple videos in a vertically scrollable list, providing a smooth scrolling experience while watching short videos...",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16.0,
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Wrap(
//             alignment: WrapAlignment.end,
//             crossAxisAlignment: WrapCrossAlignment.center,
//             spacing: 20,
//             direction: Axis.vertical,
//             children: [
//               IconText(
//                   const Icon(
//                     Icons.thumb_up,
//                     color: Colors.white,
//                     size: 38.0,
//                   ),
//                   "234",
//                       () {}),
//               IconText(
//                   const Icon(
//                     Icons.comment,
//                     color: Colors.white,
//                     size: 38.0,
//                   ),
//                   "57",
//                       () {}),
//               IconText(
//                   const Icon(
//                     Icons.share,
//                     color: Colors.white,
//                     size: 38.0,
//                   ),
//                   "342",
//                       () {}),
//               const Icon(
//                 Icons.more_vert,
//                 color: Colors.white,
//                 size: 38.0,
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class IconText extends StatelessWidget {
//   final Icon icon;
//   final String text;
//   final Function onPressed;
//
//   const IconText(this.icon, this.text, this.onPressed, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         IconButton(
//           icon: icon,
//           onPressed: () => onPressed,
//         ),
//         Text(
//           text,
//           style: const TextStyle(color: Colors.white),
//         ),
//       ],
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//











// import 'package:flutter/material.dart';
// import 'package:flutter_reels_viewer/flutter_reels_viewer.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Reels Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const ReelsPage(),
//     );
//   }
// }
//
// class ReelsPage extends StatefulWidget {
//   const ReelsPage({super.key});
//
//   @override
//   State<ReelsPage> createState() => _ReelsPageState();
// }
//
// class _ReelsPageState extends State<ReelsPage> {
//   static final List<Map<String, String>> videos = [
//     {
//       'video': 'https://assets.mixkit.co/videos/39767/39767-720.mp4',
//       'image': 'https://assets.mixkit.co/videos/39767/39767-thumb-360-0.jpg'
//     },
//     {
//       'video': 'https://assets.mixkit.co/videos/43392/43392-720.mp4',
//       'image': 'https://assets.mixkit.co/videos/43392/43392-thumb-360-0.jpg'
//     },
//     {
//       'video': 'https://assets.mixkit.co/videos/49911/49911-720.mp4',
//       'image': 'https://assets.mixkit.co/videos/49911/49911-thumb-360-0.jpg'
//     },
//     {
//       'video': 'https://assets.mixkit.co/videos/40068/40068-720.mp4',
//       'image': 'https://assets.mixkit.co/videos/40068/40068-thumb-360-0.jpg'
//     },
//     {
//       'video': 'https://assets.mixkit.co/videos/43785/43785-720.mp4',
//       'image': 'https://assets.mixkit.co/videos/43785/43785-thumb-360-0.jpg'
//     },
//     {
//       'video': 'https://assets.mixkit.co/videos/40159/40159-720.mp4',
//       'image': 'https://assets.mixkit.co/videos/40159/40159-thumb-360-0.jpg'
//     }
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: FlutterReelsViewer.network(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         videoSourceList: videos,
//         scrollDirection: Axis.vertical,
//         preloadPagesCount: 2,
//         videoBoxFit: BoxFit.cover,
//         playInLoop: true,
//         showControlsOverlay: true,
//         showVideoProgressIndicator: true,
//         onPageChanged: (videoPlayerController, index) {},
//         getCurrentVideoController: (videoPlayerController) {},
//         overlayBuilder: (context, index) => MyCustomVideoOverlay(index),
//       ),
//     );
//   }
// }
//
// class MyCustomVideoOverlay extends StatelessWidget {
//   final int index;
//
//   const MyCustomVideoOverlay(this.index, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Spacer(),
//                 Row(
//                   children: [
//                     CircleAvatar(
//                       radius: 24,
//                       backgroundImage: NetworkImage(
//                         "https://generated.photos/vue-static/home/hero/${(index % 8) + 1}.png",
//                       ),
//                     ),
//                     const SizedBox(width: 8),
//                     Text(
//                       "@User Name $index",
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     )
//                   ],
//                 ),
//                 const SizedBox(height: 8),
//                 const Text(
//                   "A Flutter widget that displays multiple videos in a vertically scrollable list, providing a smooth scrolling experience while watching short videos...",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16.0,
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Wrap(
//             alignment: WrapAlignment.end,
//             crossAxisAlignment: WrapCrossAlignment.center,
//             spacing: 20,
//             direction: Axis.vertical,
//             children: [
//               IconText(
//                 icon: const Icon(
//                   Icons.thumb_up,
//                   color: Colors.white,
//                   size: 38.0,
//                 ),
//                 text: "234",
//                 onPressed: () {},
//               ),
//               IconText(
//                 icon: const Icon(
//                   Icons.comment,
//                   color: Colors.white,
//                   size: 38.0,
//                 ),
//                 text: "57",
//                 onPressed: () {},
//               ),
//               IconText(
//                 icon: const Icon(
//                   Icons.share,
//                   color: Colors.white,
//                   size: 38.0,
//                 ),
//                 text: "342",
//                 onPressed: () {},
//               ),
//               const Icon(
//                 Icons.more_vert,
//                 color: Colors.white,
//                 size: 38.0,
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class IconText extends StatelessWidget {
//   final Icon icon;
//   final String text;
//   final VoidCallback onPressed;
//
//   const IconText({
//     super.key,
//     required this.icon,
//     required this.text,
//     required this.onPressed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         IconButton(
//           icon: icon,
//           onPressed: onPressed,
//         ),
//         Text(
//           text,
//           style: const TextStyle(color: Colors.white),
//         ),
//       ],
//     );
//   }
// }









import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: ReelPage(),));
}

class ReelPage extends StatefulWidget {
  @override
  _ReelPageState createState() => _ReelPageState();
}

class _ReelPageState extends State<ReelPage> {
  List<Map<String, dynamic>> reels = [];
  bool isLoading = false;
  int page = 1;

  @override
  void initState() {
    super.initState();
    _loadMoreReels();
  }

  Future<void> _loadMoreReels() async {
    if (isLoading) return;

    setState(() => isLoading = true);

    // Simulate API call
    await Future.delayed(Duration(seconds: 1));

    final newReels = List.generate(5, (index) => {
      'id': '${page}_$index',
      'username': '@user${reels.length + index + 1}',
      'description': 'Reel ${reels.length + index + 1} #trending',
      'likes': '${(reels.length + index) * 1.2}K',
      'comments': '${(reels.length + index) * 0.3}K',
      'isLiked': false,
    });

    setState(() {
      reels.addAll(newReels);
      page++;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: reels.length + 1,
            onPageChanged: (index) {
              if (index == reels.length - 2) {
                _loadMoreReels();
              }
            },
            itemBuilder: (context, index) {
              if (index == reels.length) {
                return Center(
                  child: CircularProgressIndicator(color: Colors.white),
                );
              }

              return Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    color: Colors.grey[900],
                    width: double.infinity,
                    height: double.infinity,
                    child: Center(
                      child: Icon(Icons.play_circle_outline,
                          color: Colors.white54,
                          size: 84
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          reels[index]['username'],
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          reels[index]['description'],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    right: 16,
                    bottom: 100,
                    child: Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            reels[index]['isLiked']
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: reels[index]['isLiked']
                                ? Colors.red
                                : Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              reels[index]['isLiked'] = !reels[index]['isLiked'];
                            });
                          },
                        ),
                        Text(
                          reels[index]['likes'],
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 20),

                        Icon(Icons.comment_outlined,
                            color: Colors.white,
                            size: 30
                        ),
                        Text(
                          reels[index]['comments'],
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 20),

                        Icon(Icons.send_outlined,
                            color: Colors.white,
                            size: 30
                        ),
                        SizedBox(height: 20),

                        Icon(Icons.more_vert,
                            color: Colors.white,
                            size: 30
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reels',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 28
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
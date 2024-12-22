import 'package:flutter/material.dart';
import 'home.dart';

// Code confirmation
void main() {
  runApp(MaterialApp(home:RegisterScreen() ,));
}
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConfirmationCodeScreen(),
    );
  }
}

class ConfirmationCodeScreen extends StatelessWidget {
  const ConfirmationCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Enter the confirmation code",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "To confirm your account, enter the 6-digit code we sent via WhatsApp to +919497567190.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: "Confirmation code",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return HomeScreen();
                    })

                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Next", style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {

              },
              child: const Text(
                "I didn’t get the code",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}















































//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ReelsPage(),
//     );
//   }
// }
//
// class ReelsPage extends StatelessWidget {
//   final List<String> videoUrls = [
//
//     'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
//     'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_2mb.mp4',
//     'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_5mb.mp4',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: PageView.builder(
//         scrollDirection: Axis.vertical,
//         itemCount: videoUrls.length,
//         itemBuilder: (context, index) {
//           return ReelVideoPlayer(videoUrl: videoUrls[index]);
//         },
//       ),
//     );
//   }
// }
//
// class ReelVideoPlayer extends StatefulWidget {
//   final String videoUrl;
//
//   const ReelVideoPlayer({Key? key, required this.videoUrl}) : super(key: key);
//
//   @override
//   _ReelVideoPlayerState createState() => _ReelVideoPlayerState();
// }
//
// class _ReelVideoPlayerState extends State<ReelVideoPlayer> {
//   // late VideoPlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//      // _controller = VideoPlayerController.network(widget.videoUrl)
//      //   ..initialize().then((_) {
//         setState(() {});
//         // _controller.play();
//         // _controller.setLooping(true);
//       // });
//   }
//
//   @override
//   void dispose() {
//     // _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         // Video Player
//         // _controller.value.isInitialized
//         //     ? SizedBox.expand(
//         //   child: FittedBox(
//         //     fit: BoxFit.cover,
//         //     child: SizedBox(
//         //       width: _controller.value.size.width,
//         //       height: _controller.value.size.height,
//         //       child: VideoPlayer(_controller),
//         //     ),
//         //   ),
//         // )
//         //     : Center(child: CircularProgressIndicator()),
//
//         // UI Overlay
//         Positioned(
//           bottom: 20,
//           left: 20,
//           right: 20,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               // Video Info
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     '@username',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Video caption goes here...\n#Hashtags',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ],
//               ),
//
//               // Action Buttons
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(Icons.favorite, color: Colors.white, size: 40),
//                   SizedBox(height: 8),
//                   Text('1.2k', style: TextStyle(color: Colors.white)),
//                   SizedBox(height: 16),
//                   Icon(Icons.comment, color: Colors.white, size: 40),
//                   SizedBox(height: 8),
//                   Text('300', style: TextStyle(color: Colors.white)),
//                   SizedBox(height: 16),
//                   Icon(Icons.share, color: Colors.white, size: 40),
//                   SizedBox(height: 8),
//                   Text('Share', style: TextStyle(color: Colors.white)),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }










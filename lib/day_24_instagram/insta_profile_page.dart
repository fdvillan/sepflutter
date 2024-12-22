// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ProfilePage(),
//     );
//   }
// }
//
// class ProfilePage extends StatelessWidget {
//   const ProfilePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: const Icon(Icons.arrow_back, color: Colors.black),
//         title: const Text(
//           'User_name',
//           style: TextStyle(color: Colors.black),
//         ),
//         actions: const [
//           Icon(Icons.more_vert, color: Colors.black),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 40,
//                     backgroundColor: Colors.grey[300],
//                     backgroundImage: NetworkImage(
//                       'https://via.placeholder.com/150',
//                     ),
//                   ),
//                   const SizedBox(width: 16),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: const [
//                             ProfileStat(label: 'Posts', count: '400'),
//                             ProfileStat(label: 'Followers', count: '1.5k'),
//                             ProfileStat(label: 'Following', count: '2000'),
//                           ],
//                         ),
//                         const SizedBox(height: 16),
//                         Row(
//                           children: [
//                             Expanded(
//                               child: OutlinedButton(
//                                 onPressed: () {},
//                                 child: const Text('Follow'),
//                               ),
//                             ),
//                             const SizedBox(width: 8),
//                             OutlinedButton(
//                               onPressed: () {},
//                               child: const Icon(Icons.message),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text(
//                     'Username',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('Personal Blog | Your Hobby | etc.'),
//                   Text(
//                     'www.yourwebsite.com',
//                     style: TextStyle(color: Colors.blue),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 16),
//
//
//             SizedBox(
//               height: 100,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: List.generate(
//                   5,
//                       (index) => Column(
//                     children: [
//                       CircleAvatar(
//                         radius: 30,
//                         backgroundColor: Colors.grey[300],
//                         backgroundImage: NetworkImage(
//                           'https://via.placeholder.com/100',
//                         ), // Replace with network image
//                       ),
//                       const SizedBox(height: 8),
//                       const Text('Title here'),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             const Divider(),
//
//
//             GridView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 mainAxisSpacing: 2,
//                 crossAxisSpacing: 2,
//               ),
//               itemCount: 12,
//               itemBuilder: (context, index) {
//                 return Container(
//                   color: Colors.grey[300],
//                   child: Image.network(
//                     'https://via.placeholder.com/150',
//                     fit: BoxFit.cover,
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.video_library,color: Colors.black,), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color: Colors.black,), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,), label: ''),
//         ],
//       ),
//     );
//   }
// }
//
// class ProfileStat extends StatelessWidget {
//   final String label;
//   final String count;
//
//   const ProfileStat({
//     Key? key,
//     required this.label,
//     required this.count,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           count,
//           style: const TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 18,
//           ),
//         ),
//         Text(label),
//       ],
//     );
//   }
// }






import 'package:flutter/cupertino.dart';

class ProfileScreen extends StatefulWidget {


  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}









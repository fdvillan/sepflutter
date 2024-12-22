import 'dart:math';
import 'package:flutter/material.dart';
import 'reels.dart';
import 'profile.dart';
import 'search.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.grey,
      ),
      home: const InstagramHomePage(),
    );
  }
}

class InstagramHomePage extends StatefulWidget {
  const InstagramHomePage({Key? key}) : super(key: key);

  @override
  State<InstagramHomePage> createState() => _InstagramHomePageState();
}

class _InstagramHomePageState extends State<InstagramHomePage> {
  int _selectedIndex = 0;

  // List of pages to display
  final List<Widget> _pages = <Widget>[
    HomePageContent(),
    Searchfeed(),
    Center(child: Text('Add Post', style: TextStyle(fontSize: 24))),
    ReelsPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Function to get the appropriate AppBar for each page
  PreferredSizeWidget? _getAppBar() {
    switch (_selectedIndex) {
      case 0:
        return AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Image(
            width: 140,
            image: AssetImage("assets/background/instagram_text-nobg.png"),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.favorite_border, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.messenger_outline, color: Colors.black),
              onPressed: () {},
            ),
          ],
        );
      case 1:
        return AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Container(
            color: Colors.white,
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        );
      case 4:
        return AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(Icons.arrow_back, color: Colors.black),
          title: const Text(
            'User_name',
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            Icon(Icons.more_vert, color: Colors.black),
          ],
        );
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex, // Highlight the selected item
        onTap: _onItemTapped, // Handle taps on items
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false, // Hide labels
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video_rounded),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// Extracted HomePage content into its own widget
class HomePageContent extends StatelessWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Existing content from the original InstagramHomePage
    return SingleChildScrollView(
      child: Column(
        children: [
          // Stories Section
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: Column(
                    children: [
                      Container(
                        width: 68,
                        height: 68,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFFE1306C), Color(0xFFFCAF45)],
                          ),
                          borderRadius: BorderRadius.circular(34),
                        ),
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: const EdgeInsets.all(2),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://xsgames.co/randomusers/avatar.php?g=${index.isEven ? 'male' : 'female'}&id=$index"),
                            child: index == 0
                                ? const Icon(
                              Icons.add,
                              size: 34,
                              color: Colors.white,
                            )
                                : null,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        index == 0 ? 'Your Story' : 'User $index',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const Divider(height: 1),
          // Posts Section
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Post Header
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://xsgames.co/randomusers/avatar.php?g=${index.isEven ? 'male' : 'female'}&id=$index"),
                    ),
                    title: Text('User_${index + 1}'),
                    subtitle: const Text('Location'),
                    trailing: const Icon(Icons.more_vert),
                  ),
                  // Post Image
                  Container(
                    height: 400,
                    color: Colors.white,
                    child: Image(
                      image: NetworkImage(
                          "https://picsum.photos/id/${Random().nextInt(100)}/400"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Post Actions
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.chat_bubble_outline),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.send),
                          onPressed: () {},
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.bookmark_border),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  // Post Likes
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      '1,234 likes',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Post Caption
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'user_${index + 1} ',
                            style:
                            const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: 'Caption for the post goes here...',
                          ),
                        ],
                      ),
                    ),
                  ),
                  // View Comments
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    child: Text(
                      'View all ${index + 10} comments',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
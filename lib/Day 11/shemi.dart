import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    home: Stackeg(),
  ));
}

class Stackeg extends StatefulWidget {
  const Stackeg({super.key});

  @override
  State<StatefulWidget> createState() {
    return StackegState();
  }
}

class StackegState extends State<Stackeg> {
  int _currentIndex = 0;
  Color appColor = Color(0xFFcae9ff);
  Color appColorDark = Color(0xFF33658a);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
        child: GNav(
            rippleColor: Colors.grey[100]!,
            hoverColor: Colors.grey[700]!,
            haptic: true,
            tabBorderRadius: 25,
            curve: Curves.decelerate,
            duration: Duration(milliseconds: 100),
            gap: 8,
            activeColor: Colors.white,
            tabBackgroundColor: appColorDark,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.pie_chart,
                text: 'pie_chart',
              ),
              GButton(
                icon: Icons.person,
                text: 'Account',
              )
            ]
        ),
      ),
      body: Stack(
        children: [
          Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
              )),
          Positioned(
            height: 250,
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: appColorDark,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))),
              child: Stack(
                children: [
                  Positioned(
                    child: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    left: 10,
                    top: 10,
                  ),
                  Positioned(
                    child: Text(
                      "Profile",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    left: 25,
                    top: 50,
                  ),
                  Positioned(
                    child: Text(
                      "Edit your profile",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    left: 25,
                    top: 90,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 150, 60, 0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/cartoon/profile pic.png",
                  ),
                  radius: 80,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Mishal Haneef",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: appColorDark),
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Card(
                        color: appColor,
                        child: ListTile(
                          leading: Icon(Icons.person,color: Colors.grey[700],),
                          title: Text("My Account",style: TextStyle(
                            fontWeight: FontWeight.bold,color: Colors.grey[700],
                          ),),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        color: appColor,
                        child: ListTile(
                          leading: Icon(Icons.dashboard,color: Colors.grey[700],),
                          title: Text("Dashboard",style: TextStyle(
                            fontWeight: FontWeight.bold,color: Colors.grey[700],
                          ), ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        color: appColor,
                        child: ListTile(
                          leading: Icon(Icons.info,color: Colors.grey[700],),
                          title: Text(
                            "About",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,color: Colors.grey[700]
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        color: appColor,
                        child: ListTile(
                          leading: Icon(Icons.logout,color: Colors.grey[700],),
                          title: Text(
                            "Logout",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[700]),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

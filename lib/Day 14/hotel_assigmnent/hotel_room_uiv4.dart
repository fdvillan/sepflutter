import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HotelBookingApp(), debugShowCheckedModeBanner: false,));
}

class HotelBookingApp extends StatelessWidget {
  List<String> img = [
    "assets/hotel_room/hotel_room_1.jpg",
    "assets/hotel_room/hotel_room_2.jpg",
  ];

  var details = [
    "Awesome room near Boddha",
    "Awesome room near Taj mahal ",
  ];

  var name = ["Boddha ,Kakathaamndu", "Agra, India"];

  var Iconss = [Icons.star, Icons.star];
  var ico = [Icons.star, Icons.star];
  var icoo = [Icons.star, Icons.star];
  var icoon = [Icons.star_half, Icons.star_half];

  var review = ["(220 reviews)", "(400 review)"];

  var rate = ["\$40", "\$50"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFF69d1ff),
            floating: true,
            pinned: true,
            leading: Icon(Icons.menu),
            expandedHeight: 140,
            title: Center(
                child: Text(
              "Type Your Location",
              style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500, fontSize: 20),
            )),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            ],
            bottom: AppBar(
              backgroundColor: Color(0xFF69d1ff),
              title: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Search for something",
                    hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.camera_alt),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  createSelectionWidget(icon: Icons.hotel, name: "Hotel", color: Colors.red),
                  createSelectionWidget(icon: Icons.restaurant, name: "restaurant", color: Colors.blue),
                  createSelectionWidget(icon: Icons.local_cafe, name: "Cafe", color: Colors.orange),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 350,
                  child: Stack(
                    children: [
                      Card(
                        child: Container(
                            height: 300,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 90),
                              child: Image(
                                image: AssetImage(img[index]),
                                fit: BoxFit.fill,
                                width: 500,
                                height: 200,
                              ),
                            )),
                      ),
                      Positioned(
                        child: Container(
                          color: Colors.white,
                          child: Center(
                            child: Text(rate[index]),
                          ),
                        ),
                        top: 150,
                        right: 30,
                        height: 30,
                        width: 50,
                      ),
                      Positioned(
                        top: 230,
                        left: 30,
                        child: Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              details[index],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(name[index]),
                            Row(
                              children: [
                                Icon(
                                  Iconss[index],
                                  color: Colors.green,
                                ),
                                Icon(ico[index], color: Colors.green),
                                Icon(icoo[index], color: Colors.green),
                                Icon(icoon[index], color: Colors.green),
                                Text(review[index]),
                              ],
                            )
                          ],
                        )),
                      ),
                    ],
                  ),
                );
              },
              childCount: img.length,
            ),
          ),
        ],
      ),
    );
  }
}

Widget createSelectionWidget({required IconData icon, required String name, required Color color}) {
  return Container(
    height: 100,
    width: 100,
    color: color,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
        ),
        Text(name),
      ],
    ),
  );
}

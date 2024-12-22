import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HotelBookingApp(),
    debugShowCheckedModeBanner: false,
  ));
}



class HotelBookingApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HotelBookingAppState();
  }
  var image=[
    "assets/hotel_room/hotel_room_1.jpg",
    "assets/hotel_room/hotel_room_2.jpg"
  ];
}



class HotelBookingAppState extends State<HotelBookingApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.favorite_border),
          ),
        ],
        backgroundColor: Colors.lightBlueAccent,
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: Column(
            children: [
              Text(
                "Type your location",
                style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SearchInput()
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 36,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              createSelectionWidget(icon: Icons.hotel, name: "Hotel", color: Colors.red),
              createSelectionWidget(icon: Icons.restaurant, name: "restaurant", color: Colors.blue),
              createSelectionWidget(icon: Icons.local_cafe, name: "Cafe", color: Colors.orange),
            ],
          )
        ],
      ),
    );
  }
}




class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: Colors.white,
        ),
        child: TextField(
          style: TextStyle(color: Colors.grey),
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            isDense: true,
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.camera_alt),
            hintText: "Search for something",
            hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
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

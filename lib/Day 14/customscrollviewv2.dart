import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: HotelBookingApp (),debugShowCheckedModeBanner: false,));
}

class HotelBookingApp extends StatelessWidget {


  var img = ["assets/hotel_room/hotel_room_1.jpg","assets/hotel_room/hotel_room_2.jpg"
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.lightBlueAccent,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 160,
            title: Text("Type your location"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            ],
            bottom: AppBar(
              backgroundColor: Colors.grey,
              title: Container(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "search something!!!",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child:
          Container(height: 100, width: double.infinity,
            child: Card(color: Colors.greenAccent,
              child: Center(child: Text("flutter")),
            ),),),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage(img[index]),),

              ),
            );
          },)),
          SliverGrid(delegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              child: Image(image: AssetImage(img[index]), fit: BoxFit.fill,),);
          }, childCount: img.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),)
        ],
      ),
    );
  }
}
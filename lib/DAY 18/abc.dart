import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: carouselassign(),));
}
class carouselassign extends StatelessWidget {

  var img=["assets/veg&fru/veg_1.jpg","assets/veg&fru/veg_2.jpg","assets/veg&fru/veg_3.jpg","assets/veg&fru/veg_3.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: false,
            expandedHeight: 120,
            backgroundColor: Colors.green,
            title: Text("FARMERS FRESH ZONE", style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),),
            actions: [
              IconButton(onPressed: () {},
                  icon: Icon(
                    Icons.location_on_outlined, color: Colors.white,)),
              Text("Kochi", style: TextStyle(color: Colors.white),),
            ],
            bottom: AppBar(
              backgroundColor: Colors.green,
              title: Container(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search for vegetables and fruits",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(onPressed: () {},
                    child: Text(
                      "VEGETABLES", style: TextStyle(color: Colors.green),
                    ),
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.green)),),
                  OutlinedButton(onPressed: () {},
                    child: Text(
                      "FRUITS", style: TextStyle(color: Colors.green),),
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.green)),
                  ),
                  OutlinedButton(onPressed: () {},
                    child: Text("EXOTIC CUTS",
                      style: TextStyle(color: Colors.green),),
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.green)),),
                ],
              ),
            ),


          ),
          SliverToBoxAdapter(
            child: Container(
              child: CarouselSlider(
                  items: [
                    Image(image: AssetImage("Assets/images/swizz.jpeg")),
                    Image(image: AssetImage("Assets/images/Finland.jpg")),
                    Image(image: AssetImage("Assets/images/havasu.jpeg")),
                    Image(image: AssetImage("Assets/images/newyork.jpg")),
                  ],
                  options: CarouselOptions(
                    height: 170,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(
                        milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.timer),
                        Text("30 mins policy"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.location_history_outlined),
                        Text("Traceability"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.home_work),
                        Text("Local Sorroundings"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child:
          Padding(padding: EdgeInsets.only(top: 10),
            child: Text("Shop by Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          ),
          SliverGrid(delegate: SliverChildBuilderDelegate((context,index){
            return Card(
              child: Image(image: AssetImage(img[index]),height: 100,width: 200,),
            );
          },childCount: img.length), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 2)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.green,
          backgroundColor: Colors.white,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label:"Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label:"Account"),
          ]),
    );
  }
}
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Carouselslidereg(),
    debugShowCheckedModeBanner: false,
  ));
}

class Carouselslidereg extends StatelessWidget {
  const Carouselslidereg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.green,), label: "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.green), label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.green,), label: "Account"),
      ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            floating: true,
            pinned: true,
            expandedHeight: 140,
            title: Center(
              child: Text(
                "FARMERS FRESH ZONE",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.fmd_good_outlined,color: Colors.white,),
              ),
              Text("Kochi",style: TextStyle(color: Colors.white),),
            ],
            bottom: AppBar(
              backgroundColor: Colors.green,
              title: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Search for vegetables and fruits....",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.search,color: Colors.grey,),
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
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "VEGETABLES",
                      style: TextStyle(color: Colors.green),
                    ),
                    style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.green)),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "FRUITS",
                      style: TextStyle(color: Colors.green),
                    ),
                    style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.green)),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "EXOTIC CUTS",
                      style: TextStyle(color: Colors.green),
                    ),
                    style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.green)),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
            padding: const EdgeInsets.only(top: 1),
            child: CarouselSlider(
                items: [
                  Image(image: AssetImage("assets/veg&fru/book.jpg")),
                  Image(image: AssetImage("assets/veg&fru/book.jpg")),
                  Image(image: AssetImage("assets/veg&fru/book.jpg")),
                  Image(image: AssetImage("assets/veg&fru/book.jpg")),
                ],
                options: CarouselOptions(
                  height: 100,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                )),
          )),
          SliverToBoxAdapter(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.timer,
                      ),
                      Text("30 mins ploicy"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.location_history_outlined,
                      ),
                      Text("Traceability")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.maps_home_work,
                      ),
                      Text("Local Sourrounding")
                    ],
                  ),
                ],
              ),
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              "Shop by Cathegory",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
            padding: const EdgeInsets.only(top: 1),
            child: CarouselSlider(
                items: [
                  Image(image: AssetImage("assets/veg&fru/veg_1.jpg")),
                  Image(image: AssetImage("assets/veg&fru/veg_2.jpg")),
                  Image(image: AssetImage("assets/veg&fru/veg_3.jpg")),
                  Image(image: AssetImage("assets/veg&fru/veg_1.jpg")),
                ],
                options: CarouselOptions(
                  height: 150,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                )),
          )),
        ],
      ),
    );
  }
}
























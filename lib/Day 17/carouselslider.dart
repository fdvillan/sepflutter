import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Carouselslidereg(),));
}
class Carouselslidereg extends StatelessWidget {
  const Carouselslidereg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: CarouselSlider(items: [
        Image(image: AssetImage("assets/images/cartoon/ameer.png")),
        Image(image: AssetImage("assets/images/cartoon/disha.png")),
        Image(image: AssetImage("assets/images/cartoon/nunu.png")),
        Image(image: AssetImage("assets/images/cartoon/profile pic.png")),
      ],
        options: CarouselOptions(
          height: 500,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 2,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval:Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.easeInOutExpo,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal

        ),),),
    );
  }
}
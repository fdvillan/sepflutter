import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: Searchfeed(),
    debugShowCheckedModeBanner: false,
  ));
}

class Searchfeed extends StatefulWidget {
  const Searchfeed({super.key});

  @override
  State<Searchfeed> createState() => _SearchfeedState();
}

class _SearchfeedState extends State<Searchfeed> {
  var img = [
    "assets/images/cartoon/nunu.png",
    "assets/images/cartoon/nunu.png",
    "assets/images/cartoon/nunu.png",
    "assets/images/cartoon/nunu.png",
    "assets/images/cartoon/nunu.png",
    "assets/images/cartoon/nunu.png",
    "assets/images/cartoon/nunu.png",
    "assets/images/cartoon/nunu.png",
    "assets/images/cartoon/nunu.png",
    "assets/images/cartoon/nunu.png"
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: StaggeredGrid.count(
        crossAxisCount: 3,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image(image: AssetImage(img[0]))),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image(
                image: AssetImage(img[1]),
                fit: BoxFit.cover,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Image(
                image: AssetImage(img[2]),
                fit: BoxFit.cover,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image(
                image: AssetImage(img[3]),
                fit: BoxFit.cover,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image(
                image: AssetImage(img[4]),
                fit: BoxFit.cover,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Image(
                image: AssetImage(img[5]),
                fit: BoxFit.cover,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image(
                image: AssetImage(img[6]),
                fit: BoxFit.cover,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image(
                image: AssetImage(img[7]),
                fit: BoxFit.cover,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image(
                image: AssetImage(img[8]),
                fit: BoxFit.cover,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image(
                image: AssetImage(img[9]),
                fit: BoxFit.cover,
              ))
        ],
      ),
    );
  }
}
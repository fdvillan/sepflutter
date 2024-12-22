import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: StaggeredGridImages(),
  ));
}

class StaggeredGridImages extends StatefulWidget {
  StaggeredGridImages({super.key});

  @override
  State<StaggeredGridImages> createState() => _StaggeredGridImagesState();
}

class _StaggeredGridImagesState extends State<StaggeredGridImages> {
  var image = [
    "assets/nature/Havasu_falls.jpg",
    "assets/nature/Tronheim.jpg",
    "assets/nature/Portugal.jpg",
    "assets/nature/Rocky_Mountain_National_Park.jpg",
    "assets/nature/Switzerland.jpg",
    "assets/nature/London.jpg"
  ];
  final List<String> name = [
    "Havasu Fall",
    "Trondheim",
    "Portugal",
    "Rocky Mountain National Park",
    "Switzerland",
    "London",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text("StaggeredGrid "),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(child: Image(image: AssetImage(image[0]), fit: BoxFit.cover)),
                        Text(name[0]),
                      ],
                    ),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(child: Image(image: AssetImage(image[1]), fit: BoxFit.cover)),
                        Text(name[1]),
                      ],
                    ),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(child: Image(image: AssetImage(image[2]), fit: BoxFit.cover)),
                        Text(name[2]),
                      ],
                    ),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(child: Image(image: AssetImage(image[3]), fit: BoxFit.cover)),
                        Text(name[3]),
                      ],
                    ),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(child: Image(image: AssetImage(image[4]), fit: BoxFit.cover)),
                        Text(name[4]),
                      ],
                    ),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(child: Image(image: AssetImage(image[5]), fit: BoxFit.cover)),
                        Text(name[5]),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

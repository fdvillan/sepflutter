import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridViewCount(),
  ));
}

class GridViewCount extends StatefulWidget {
  const GridViewCount({super.key});

  @override
  State<GridViewCount> createState() => GridViewCountState();
}

class GridViewCountState extends State<GridViewCount> {
  final List<IconData> icons = [
    Icons.directions_car,
    Icons.directions_bike_sharp,
    Icons.directions_boat,
    Icons.directions_bus,
    Icons.directions_train,
    Icons.directions_walk,
    Icons.contact_mail_outlined,
    Icons.duo,
    Icons.hourglass_bottom_outlined,
    Icons.mobile_friendly,
    Icons.message,
    Icons.key,
    Icons.wifi,
    Icons.bluetooth,
    Icons.emoji_emotions,
  ];

  final List<String> name = [
    "CAR",
    "BICYCLE",
    "BOAT",
    "BUS",
    "TRAIN",
    "WALK",
    "CONTACT",
    "DUO",
    "HOUR",
    "MOBILE",
    "MESSAGE",
    "KEY",
    "WIFI",
    "BLUETOOTH",
    "SMILE",
  ];

  final List<Color> colors = [
    const Color(0XFFA6979C),
    const Color(0XFF99C2A2),
    const Color(0xFFAF85DF),
    const Color(0xFF6C756B),
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.red,
    Colors.pink,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View Count"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
            icons.length,
            (index) => Card(
                  color: colors[index],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(icons[index]), Text(name[index])],
                  ),
                )),
      ),
    );
  }
}

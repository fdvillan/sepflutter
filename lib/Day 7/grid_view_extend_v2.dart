import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: GridViewExtend(),
    ),
  );
}

class GridViewExtend extends StatelessWidget {
  GridViewExtend({super.key});

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
        title: const Text("GridView Extent"),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150,
        children: List.generate(
            icons.length,
            (index) => Card(
                  elevation: 10,
                  shadowColor: Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(200),
                  ),
                  color: colors[index],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icons[index]),
                      Text(name[index]),
                    ],
                  ),
                )),
      ),
    );
  }
}

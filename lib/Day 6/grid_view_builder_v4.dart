import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridViewGenerator(),
  ));
}

class GridViewGenerator extends StatelessWidget {
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
    const Color(0xFFFFC5D9),  // Pastel pink
    const Color(0xFFBCE3D1),  // Pastel mint
    const Color(0xFFE5D1FA),  // Pastel lavender
    const Color(0xFFFFDAB9),  // Pastel peach
    const Color(0xFFA6D1E6),  // Pastel blue
    const Color(0xFFFFF4BD),  // Pastel yellow
    const Color(0xFFD4F0C5),  // Pastel green
    const Color(0xFFFFCACA),  // Pastel red
    const Color(0xFFC7E9B0),  // Pastel sage
    const Color(0xFFFFD1D1),  // Pastel coral
    const Color(0xFFFFE1E6),  // Pastel rose
    const Color(0xFFCCE6FF),  // Pastel sky blue
    const Color(0xFFFFF9C4),  // Pastel lemon
    const Color(0xFFB5E6B5),  // Pastel mint green
    const Color(0xFFFFCCCC),  // Pastel salmon
  ];

  GridViewGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Grid View Builder",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "GridViewCustom",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          children: List.generate(
            icons.length,
            (index) => Card(
              color: colors[index],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(icons[index],color: Colors.black87,),
                  Text(name[index],style: TextStyle(color: Colors.black87),),
                ],
              ),
            ),
          )),
    );
  }
}

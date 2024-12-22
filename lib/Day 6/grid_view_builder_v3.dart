import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: GridViewBuilderAssignment(),
    debugShowCheckedModeBanner: false,
  ));
}

class GridViewBuilderAssignment extends StatelessWidget {
  GridViewBuilderAssignment({super.key});

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
    Icons.emoji_emotions
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
    "SMILE"
  ];
  final List<MaterialColor> colors = [
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.pink,
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
    Colors.red
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        title: const Text(
          "Grid View Builder",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Text(
              "GridViewCustom",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: colors[index],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icons[index],
                ),
                Text(
                  name[index],
                  style: GoogleFonts.afacad(
                    textStyle: Theme.of(context).textTheme.headlineLarge,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          );
        },
        itemCount: icons.length,
      ),
    );
  }
}

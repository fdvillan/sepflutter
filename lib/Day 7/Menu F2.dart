import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
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
    Icons.person,
    Icons.local_taxi,
    Icons.calendar_today,
    Icons.location_on,
    Icons.help,
    Icons.phone,
    Icons.settings,
    Icons.logout,
  ];

  final List<String> name = [
    'My Profile',
    'Book a Cab',
    'Booking Schedule',
    'Track Your Cab',
    'Help & Feedback',
    'Call to Transport',
    'Settings',
    'Log-out',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Grid View Count"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
            icons.length,
            (index) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow:  [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: const Offset(0,8),
                            spreadRadius: 0,

                          ),

                        ]


                      ),

                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 40),
                      child: Icon(
                        icons[index],
                        color: Colors.amber,
                      ),
                    ),
                    Text(
                      name[index],
                    ),
                  ],
                )),
      ),
    );
  }
}

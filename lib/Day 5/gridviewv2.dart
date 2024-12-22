import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridViewGenerator(),
  ));
}

class GridViewGenerator extends StatelessWidget {
  final List<IconData> icons = [
    Icons.import_contacts_sharp,
    Icons.add_alarm,
    Icons.account_balance,
    Icons.add_a_photo,
    Icons.backpack,
    Icons.insert_comment,
    Icons.access_alarms
  ];
  final List<Color> colors = [
    Colors.deepOrange,
    Colors.blue,
    Colors.pink,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.purpleAccent,
  ];

   GridViewGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gridview"),
      ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
          children: List.generate(
            icons.length,
            (index) => Card(
              color: colors[index],
              child: Center(
                child: Icon(icons[index]),
              ),
            ),
          )),
    );
  }
}

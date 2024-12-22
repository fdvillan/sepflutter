import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridViewBuilder(),
  ));
}

class GridViewBuilder extends StatelessWidget {
  GridViewBuilder({super.key});

  final List<IconData> icons = [
    Icons.import_contacts_sharp,
    Icons.add_card,
    Icons.add_alert,
    Icons.account_balance,
    Icons.insert_emoticon_sharp,
    Icons.import_contacts_sharp,
    Icons.add_card,
    Icons.account_balance,
    Icons.insert_emoticon_sharp
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
    Colors.pink
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gridview"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 150,
          crossAxisSpacing: 10,
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: colors[index],
            child: Center(
              child: Icon(icons[index]),
            ),
          );
        },
        itemCount: icons.length,
      ),
    );
  }
}

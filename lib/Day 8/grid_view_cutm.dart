import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: GridviewCustom(), debugShowCheckedModeBanner: false));
}

class GridviewCustom extends StatelessWidget {
  var Iconss = [Icons.import_contacts_sharp, Icons.add_card, Icons.add_alert, Icons.account_balance];

  var data = ["account_balance", "insert_emoticon_sharp", "import_contacts_sharp", "add_card"];
  var Colr = [Colors.yellow, Colors.green, Colors.red, Colors.pink];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View custom"),
      ),
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              color: Colr[index],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Iconss[index]), Text(data[index])],
              ),
            );
          }, childCount: data.length)),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listviewbuilder(),
  ));
}

class Listviewbuilder extends StatelessWidget {
  var name = ["Mark Zuckerberg", "Bill Gates", "Larry Page", "Sergey Brin"];
  var number = ["4534456563", "1235367843", "3476598765", "46578792334"];
  var img = [
    "assets/images/people/mark_zuckerberg.png",
    "assets/images/people/bill_gates.png",
    "assets/images/people/larry_page.png",
    "assets/images/people/sergey_brin.png",
  ];
  var colors = [Colors.pink, Colors.green, Colors.cyan, Colors.red];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Listview builder"),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            color: colors[index],
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                child: Image(
                  image: AssetImage(img[index]),
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(name[index]),
              subtitle: Text(number[index]),
              trailing: Icon(Icons.call),
            ),
          );
        },
        itemCount: name.length,
      ),
    );
  }
}

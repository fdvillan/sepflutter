import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ListViewPage(),
  ));
}

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "listview",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.pinkAccent[100],
            child: const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/cartoon/disha.png"),
              ),
              title: Text("Disha"),
              subtitle: Text("6238039858"),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            color: Colors.pinkAccent[100],
            child: const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/cartoon/ameer.png"),
              ),
              title: Text("Ameer"),
              subtitle: Text("6238039858"),
              trailing: Icon(Icons.phone),
            ),
          ),
          Card(
            color: Colors.pinkAccent[100],
            child: const ListTile(
              leading: CircleAvatar(
                backgroundImage:AssetImage("assets/images/cartoon/nunu.png"),
              ),
              title: Text("nunu"),
              subtitle: Text("6238039858"),
              trailing: Icon(Icons.phone),
            ),
          ),
        ],
      ),
    );
  }
}
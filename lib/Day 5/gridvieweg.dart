import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: GridViewEg(),
  ));
}

class GridViewEg extends StatelessWidget {
  const GridViewEg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gridview"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
        children: const [
          Card(
            child: Center(
              child: Icon(Icons.account_box),
            ),
          ),
          Card(
            child: Center(
              child: Icon(Icons.account_balance),
            ),
          ),
          Card(
            child: Center(
              child: Icon(Icons.add),
            ),
          ),
          Card(
            child: Center(
              child: Icon(Icons.access_alarm_rounded),
            ),
          ),
          Card(
            child: Center(
              child: Icon(Icons.add_alert),
            ),
          ),
        ],
      ),
    );
  }
}

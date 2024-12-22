import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: expandedui(),
    debugShowCheckedModeBanner: false,
  ));
}

class expandedui extends StatelessWidget {
  const expandedui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.red,
            height: 300,
            width: double.infinity,
          )),
          Expanded(
              child: Container(
            color: Colors.yellow,
            height: 100,
            width: double.infinity,
          )),
          Expanded(
              child: Container(
            color: Colors.blue,
            height: 200,
            width: double.infinity,
          )),
        ],
      ),
    );
  }
}

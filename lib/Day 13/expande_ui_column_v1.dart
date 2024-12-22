import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(home: ExpandeUi()));
}

class ExpandeUi extends StatelessWidget {
  const ExpandeUi({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.orange,
            height: 200,
            width: double.infinity,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              height: 100,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              height: 200,
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}

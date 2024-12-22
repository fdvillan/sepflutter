import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Oriantion(),));
}

class Oriantion extends StatefulWidget {
  const Oriantion({super.key});

  @override
  State<Oriantion> createState() => _OriantionState();
}

class _OriantionState extends State<Oriantion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context, orentation) {
        if (orentation == Orientation.portrait) {
          return Container(
            color: Colors.yellow,
            child: Center(
              child: Text("portrait"),
            ),
          );
        }
        else {
          return Container(
            color: Colors.green,
            child: Center(
              child: Text("landscap"),
            ),
          );
        }
      }),
    );
  }
}

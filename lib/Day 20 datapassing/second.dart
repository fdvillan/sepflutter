import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sepflutter/Day%2020%20datapassing/dummydata.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final data=dummyprducts.firstWhere((product)=>product["id"]==id);

    return Scaffold(
      body: Container(color: Colors.green[100],width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data["name"]),
          Image(image: AssetImage(data["image"])),
          Text(data["details"]),
          Text(data["price"]),
        ],
      ),),

    );
  }
}

import 'package:flutter/material.dart';


class Customwidget extends StatelessWidget {
  final Text title;
  final Color clr;
  final Text? subtitle;
  final Image img;
  VoidCallback onpress;
  Customwidget({required this.title,required this.clr,required this.subtitle,required this.img,required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(color: clr,
        child: ListTile(
          leading:img ,
          title: title,
          subtitle:subtitle ,
          onTap: onpress,
        ),
      ),
    );
  }
}

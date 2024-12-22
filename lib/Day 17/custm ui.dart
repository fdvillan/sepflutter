import 'package:flutter/material.dart';
import 'package:sepflutter/Day%2017/customwidget.dart';
import 'package:sepflutter/Day%2017/datepicker.dart';
void main(){
  runApp(MaterialApp(home: Custui(),));
}
class Custui extends StatelessWidget {
  const Custui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Customwidget (
          clr: Colors.yellow,
          title: Text("Date"),
          img: Image(image:AssetImage("assets/background/background img.jpg")),
          onpress: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Datepickereg()));
          }, subtitle: null,),
      ),
    );
  }
}

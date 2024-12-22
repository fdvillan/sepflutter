import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Homepageuser(),));
}

class Homepageuser extends StatefulWidget {


  @override
  State<Homepageuser> createState() => _userState();
}

class _userState extends State<Homepageuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("data"),
      ),
    );
  }
}



// central text
//     admin listview builder



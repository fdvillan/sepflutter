import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Homepageadmin(),));
}

class Homepageadmin extends StatefulWidget {


  @override
  State<Homepageadmin> createState() => _HomepageadminState();
}

class _HomepageadminState extends State<Homepageadmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){

      })


    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Stackeg(),));
}

class Stackeg extends StatelessWidget {
  const Stackeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Center(child: Container(color: Colors.red, height: double.infinity,width: double.infinity,)),
            Positioned(child: Container(color: Colors.green,)
              ,height: 700, width: 600,top: 310,),
            Positioned(child: Container(color: Colors.yellow,),
              height: 100, width: 100,
              top: 250,left: 200,)
          ],
        ),
      ),
    );
  }
}

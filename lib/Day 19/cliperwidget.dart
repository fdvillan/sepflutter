import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: cliipperwdiget(),));
}
class cliipperwdiget extends StatelessWidget {
  const cliipperwdiget({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
  body:ListView(
    children: [
      ClipRect(
        child: Image(image:AssetImage ("assets/images/cartoon/ameer.png")),
      ),
      ClipRRect(
         borderRadius:BorderRadius.circular(200),
        child: Image(image: AssetImage("assets/images/cartoon/disha.png")),

      ),
      ClipOval(
        child: Image(image: AssetImage("assets/images/cartoon/profile pic.png")),

      )
    ],
  ) ,
);
  }
}

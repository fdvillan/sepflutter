import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: checkeddbox(),debugShowCheckedModeBanner: false,));
}

class checkeddbox extends StatefulWidget {
  @override
  State<checkeddbox> createState() => _checkeddboxState();
}

class _checkeddboxState extends State<checkeddbox> {
  bool ischecked=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Checkbox(checkColor: Colors.green,
            activeColor: Colors.black,value: ischecked, onChanged: (bool ? value){
              setState(() {
                ischecked=value!;
              });
            }),
      ),
    );
  }
}
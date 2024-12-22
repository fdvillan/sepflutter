import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class leftwidgte extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(color: Colors.yellow[100],
      child: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          leading: Icon(Icons.info),
          title: Text("info"),
          trailing: Icon(Icons.arrow_drop_down),
        );

    },itemCount: 10,),
    );
  }
}
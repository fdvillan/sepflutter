import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sepflutter/Day%2022%20mediaquery/responsive.dart';
import 'package:sepflutter/Day%2022%20mediaquery/rightwidget.dart';

class Centerwidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(color: Colors.greenAccent,
      child: Column(children: [
        GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            mainAxisSpacing: 10,crossAxisSpacing: 10),
          itemBuilder: (context,index){

              return Container(
                height: 200,
                color: Colors.yellow,
              );
          },itemCount: 15,),
      if(Responsive.isMobile(context))Rightwidget(),

      ],),
    );
  }
}
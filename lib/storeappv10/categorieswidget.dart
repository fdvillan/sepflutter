import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categorieswidget extends StatelessWidget {
  const Categorieswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),

        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                height: 50,
                  decoration:BoxDecoration(color: Colors.white,) ,
                child: Row(
                  children: [
                   Padding(
                     padding: EdgeInsets.all(5),
                     child: Image.asset("assets/veg&fru/veg_1.jpg",height: 50,width: 50,),

                   ),
                  ],
                ),
              )
            ],
          ),
        )


      ],
    );
  }
}

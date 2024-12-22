import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridviewcustom(),debugShowCheckedModeBanner: false,));
}

class Gridviewcustom extends StatelessWidget{
  Gridviewcustom({super.key});

  var image= ["assets/food/Garden Basilica.jpg","assets/food/Kangan Caat.jpg","assets/food/rosa Bianca.jpeg","assets/food/Santa Fe Hawaiian.jpeg","assets/food/Southwest-Hawaiian-Roll-Turkey-Sliders-H1-1200x720.jpg","assets/food/Tempura Veg.jpeg","assets/food/trattoria-rosa-bianca.jpg"];
  final List<String> name=["Garden Basilica","Kangan Caat","rosa Bianca","Santa Fe Hawaiian","Southwest Hawaiian Roll Turkey","Tempura Veg","trattoria rosa bianca"];
  var price =["30rs","40rs","50rs","20rs","10rs","57rs","70rs"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Newly Added"),leading: Icon(Icons.arrow_back),backgroundColor: Colors.blue,actions: [
          Icon(Icons.search),
        ],),

        body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), childrenDelegate: SliverChildBuilderDelegate((context,index){
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(child: Image(image: AssetImage(image[index]),fit: BoxFit.cover,),height:200,width: double.infinity,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(name[index],style: TextStyle(color: Colors.blue),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(price[index],style: TextStyle(color: Colors.blue),),
                    ),

                  ],
                ),
              ],
            ),
          );

        },childCount: name.length))
        );
    }

}
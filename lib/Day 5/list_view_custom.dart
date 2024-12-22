import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ListViewCustom(),));
}
class ListViewCustom extends StatelessWidget{

  var name = ["Mark Zuckerberg", "Bill Gates", "Larry Page", "Sergey Brin"];
  var number = ["4534456563", "1235367843", "3476598765", "46578792334"];
  var img = [
    "assets/images/people/mark_zuckerberg.png",
    "assets/images/people/bill_gates.png",
    "assets/images/people/larry_page.png",
    "assets/images/people/sergey_brin.png",

  ];
 final List <Color> colors = [Colors.pink, Colors.green, Colors.cyan, Colors.red];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title: const Text("Listview custom"),) ,
      body:ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index){
        return Card(
          color: colors[index],
        child:ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage(img[index]),),
    title:Text(name[index]) ,
    subtitle: Text(number[index]),
    trailing:const Icon(Icons.call) ,
        ) ,
        );
      },childCount: name.length)),
      );
  }
}
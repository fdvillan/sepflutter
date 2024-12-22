import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:ListViewseparated(),));
}

class ListViewseparated extends StatelessWidget{

  var name = ["Mark Zuckerberg", "Bill Gates", "Larry Page", "Sergey Brin"];
  var number = ["4534456563", "1235367843", "3476598765", "46578792334"];
  var img = [
    "assets/images/people/mark_zuckerberg.png",
    "assets/images/people/bill_gates.png",
    "assets/images/people/larry_page.png",
    "assets/images/people/sergey_brin.png",

  ];
  var colors = [Colors.pink, Colors.green, Colors.cyan, Colors.red];
  var course=["Flutter","testing","python","bigdata"];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title: const Text("Listview"),) ,
      body:ListView.separated(itemBuilder:(context,index) {
        return Card(color:colors[index],
    child:ListTile(
    leading: CircleAvatar(backgroundImage: AssetImage(img[index]),),
    title: Text(name[index]),
    subtitle: Text(number[index]),
    trailing: const Icon(Icons.call),
    ),
    ) ;


    },
     separatorBuilder: (context,index){
        if(index%2==0){
          return Card(
            child: Text(course[index]),
          );
        }
        else{
          return const SizedBox();
        }
     },
    // return Divider(
    // thickness: 5,color:colors [index],
    // );
    // },
    itemCount: name.length),
    );
    }
  }
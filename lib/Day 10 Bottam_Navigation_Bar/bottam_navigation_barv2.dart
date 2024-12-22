import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Bottomnav(),));
}
class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav>{

  var screen=[Center(child: Text("Home"),),
    Center(child: Text("Favourite"),),
    Center(child: Text("Settings"),),
    Center(child: Text("Notification"),),
  ];
  int index=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.blueAccent,
        currentIndex: index,
        onTap: (tapindex){
          setState(() {
            index=tapindex;
          });
        },
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.red[100]),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favourite",backgroundColor: Colors.red[100]),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings",backgroundColor: Colors.red[100]),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notifications",backgroundColor: Colors.red[100]),
        ]),
    );
  }
}
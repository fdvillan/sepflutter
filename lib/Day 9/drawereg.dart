import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Drawerex(),debugShowCheckedModeBanner: false,));
}

class Drawerex extends StatelessWidget {
  const Drawerex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,),
      drawer: Drawer(
        backgroundColor: Colors.lightBlue[100],
        child: ListView(children: [
          UserAccountsDrawerHeader
            (decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/nature/Havasu_falls.jpg"),fit: BoxFit.cover)),
            accountName: Text("Disha"), accountEmail: Text("disha@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/nature/Tronheim.jpg"),),otherAccountsPictures: [
              CircleAvatar(backgroundImage: AssetImage("assets/nature/Rocky_Mountain_National_Park.jpg"),backgroundColor: Colors.blue,)
            ],),
          ListTile(
            leading:Icon(Icons.send),
            title: Text("Sent"),
          ),
          ListTile(
            leading:Icon(Icons.drafts),
            title: Text("Drafts"),
          ),
          ListTile(
            leading:Icon(Icons.snooze),
            title: Text("Snoozed"),
          ),
          ListTile(
            leading:Icon(Icons.label_important_outline),
            title: Text("important"),
          ),
          ListTile(
            leading:Icon(Icons.mail_outline_outlined),
            title: Text("All mail"),
          ),
          ListTile(
            leading:Icon(Icons.restore_from_trash_rounded),
            title: Text("Trash"),
          ),
          Divider(
            thickness: 3,color: Colors.white,
          ),
          ListTile(
            leading:Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            leading:Icon(Icons.help),
            title: Text("Help"),
          ),
          ListTile(
            leading:Icon(Icons.feedback_outlined),
            title: Text("Send feedback"),
          )
        ],),
      ),
      body:
      Center(child: Text("welcome",)),
    );
  }
}
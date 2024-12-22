import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Borramsheet(),));
}

class Borramsheet extends StatelessWidget {
  const Borramsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Center(
        child: TextButton(onPressed: () => show(context), child: Text("show")),
      ),),
    );
  }

  void show(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) {
      return ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text(("Home")),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(("Settings")),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text(("help")),
          )

        ],
      );
    });
  }
}
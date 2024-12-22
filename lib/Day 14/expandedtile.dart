import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: expandedtile (),));
}
class expandedtile extends StatelessWidget {
  const expandedtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              Card(child:
              ExpansionTile(title:Text("Light color"),
                subtitle: Text("data"),
                children: [
                  ListTile(leading:CircleAvatar(backgroundColor: Colors.yellow[100],),
                    title: Text("Light yellow"),),
                  ListTile(leading:CircleAvatar(backgroundColor: Colors.blue[100],),
                    title: Text("Light blue"),),
                  ListTile(leading:CircleAvatar(backgroundColor: Colors.green[100],),
                    title: Text("Light green"),),
                  ListTile(leading:CircleAvatar(backgroundColor: Colors.pink[100],),
                    title: Text("Light pink"),),
                ],
              ) ),
              Card(child:
              ExpansionTile(title: Text("Dark color"),
                subtitle: Text("data"),
                children: [
                  ListTile(leading:CircleAvatar(backgroundColor: Colors.yellow[100],),
                    title: Text("Dark yellow"),),
                  ListTile(leading:CircleAvatar(backgroundColor: Colors.blue[100],),
                    title: Text("Dark blue"),),
                  ListTile(leading:CircleAvatar(backgroundColor: Colors.green[100],),
                    title: Text("Dark green"),),
                  ListTile(leading:CircleAvatar(backgroundColor: Colors.pink[100],),
                    title: Text("Dark pink"),),

                ],
              ) ,)
            ]
        )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:sepflutter/Day%202/homepage.dart';
import 'package:sepflutter/Day%205/list_view_custom.dart';
import 'package:sepflutter/Day%208/grid_view_cutm.dart';


void main(){
  runApp(MaterialApp(home: Tabbarex(),debugShowCheckedModeBanner: false,));
}
class Tabbarex extends StatelessWidget {
  const Tabbarex({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.lime[200],
          actions: [
            Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context){
              return[
                PopupMenuItem(child: Text("Settings")),
                PopupMenuItem(child: Text("New Broadcast")),
                PopupMenuItem(child: Text("Help")),
                PopupMenuItem(child: Text("Linked Devices"))
              ];
            })
          ],

          title: Text("Tab bar"),
          bottom: TabBar(
              dividerColor: Colors.blue,
              indicatorColor: Colors.purple,
              unselectedLabelColor: Colors.green,
              labelColor: Colors.red,
              tabs: [
                Tab(child: Icon(Icons.camera_alt),),
                Tab(child: Text("Chat"),),
                Tab(child: Text("Status"),),
                Tab(child: Text("Call"),)
              ]),
        ),
        body: TabBarView(children: [
          Center(child: Text("data"),),
          ListViewCustom(),
          GridviewCustom(),
          Homepage(),
        ]),
        floatingActionButton: FloatingActionButton(onPressed: (){
        }
          ,child: Icon(Icons.add),),
      ),
    );
  }
}
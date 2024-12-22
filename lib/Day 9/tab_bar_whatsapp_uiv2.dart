import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: WhatsAppUI(),
    debugShowCheckedModeBanner: false,
  ));
}

class WhatsAppUI extends StatelessWidget {
  const WhatsAppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal[800],
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            PopupMenuButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("Settings")),
                  PopupMenuItem(child: Text("New Broadcast")),
                  PopupMenuItem(child: Text("Help")),
                  PopupMenuItem(child: Text("Linked Devices"))
                ];
              },
            )
          ],
          bottom: TabBar(
              dividerColor: Colors.white70,
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text("Chat"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Call"),
                )
              ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Text("camera"),
          ),
          ChatPage(),
          Center(
            child: Text("status page"),
          ),
          Center(
            child: Text("call page"),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal[800],
          onPressed: () {},
          shape: CircleBorder(),
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  List<String> name = ["James", "John", "Karin", "Nana", "Bond", "Jhonson", "Mark", "Ray", "Land", "Ameer"];
  List<String> message = [
    "Hello...Good Morning",
    "Hey..John where were you in Lastnight",
    "wow..wonderful",
    "Mashaallah",
    "Mmmm...",
    "Oh my God",
    "smile please",
    "2345678945",
    "omg..",
    "Nice work..",
  ];

  List<String> time = [
    "10:15 PM",
    "4:02 AM",
    "23 Nov",
    "3 Oct",
    "15 Jan",
    "14 May",
    "22 Feb",
    "10 Apr",
    "3 Dec",
    "6 Jun",
  ];
  List<int> count = [2, 1, 0, 0, 0, 0, 0, 0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (buildContext, index) {
        return ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 13),
          leading: CircleAvatar(
            backgroundColor: Colors.teal[800],
            child: Text(name[index].substring(0,1),style: TextStyle(color: Colors.white,fontSize: 18),),
          ),
          title: Text(name[index]),
          subtitle: Text(message[index]),
          trailing: Column(
            children: [
              Text(time[index]),
              if (count[index] > 0)
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Text("${(count[index])}",style: TextStyle(color: Colors.white),),
                ),
            ],
          ),
        );
      },
    );
  }
}

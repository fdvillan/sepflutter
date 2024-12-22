import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sepflutter/day_26_shared_preference/login_page_vs2.dart';


import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: Homepagevs3(),));
}
class Homepagevs3 extends StatefulWidget {
  const Homepagevs3({super.key});

  @override
  State<Homepagevs3> createState() => _Homepagevs3State();
}

class _Homepagevs3State extends State<Homepagevs3> {
  @override
  void initState() {
    ftechdata();
    super.initState();
  }

  late SharedPreferences data;
  late String username;
   String ? name;

  void ftechdata() async {
    data = await SharedPreferences.getInstance();
    setState(() {
      username = data.getString("username")!;
      name=data.getString("name")!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("$name"),backgroundColor: Colors.green,),
      body: Column(
        children: [
          Text("Username"),
          ElevatedButton(onPressed: () {
            data.setBool("newuser", true);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Loginpagevs2()));
          }, child: Text("Logout")),
        ],
      ),
    );
  }
}
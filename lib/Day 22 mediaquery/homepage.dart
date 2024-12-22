import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sepflutter/Day%2022%20mediaquery/lefttwidget.dart';
import 'package:sepflutter/Day%2022%20mediaquery/responsive.dart';
import 'package:sepflutter/Day%2022%20mediaquery/rightwidget.dart';
import 'centerwidget.dart';

void main(){
  runApp(MaterialApp(home: Homepage(),debugShowCheckedModeBanner: false,));
}
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !Responsive.isTab(context) ?AppBar(title: Text("Screen"),
        actions: [
          if(!Responsive.isWeb(context))
            IconButton(onPressed: (){
              if(MediaQuery.of(context).orientation==Orientation.portrait){
                SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
              }
              else{
                SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
              }
            }, icon: Icon(Icons.arrow_drop_down_circle))
        ],

      ) :null,
      drawer: Drawer(child: leftwidgte(),),


      body: Row(
        children: [
          if(Responsive.isWeb(context))
            Expanded(child: leftwidgte(),flex: 2,),
          Expanded(child: Centerwidget(),flex: 5,),
          if(Responsive.isWeb(context))
            Expanded(child: Rightwidget(),flex: 3,),
        ],
      ),);
  }
}
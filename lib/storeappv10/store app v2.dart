import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: StoreApp (),));
}

class StoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Store",style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined)),
        ],
        bottom: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  suffixIcon: Icon(Icons.filter_list),
                  hintText: "Search for Products"
              ),
            ),
          ),


        ),
      ),

    );
  }
}

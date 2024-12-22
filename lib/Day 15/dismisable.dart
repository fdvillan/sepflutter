import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: dismissble(),
    debugShowCheckedModeBanner: false,
  ));
}

class dismissble extends StatelessWidget {
  var datas = ["data1", "data2", "data3", "data4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Dismissible(
              background: Container(
                color: Colors.green,
              ),
              secondaryBackground: Container(
                color: Colors.red,
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("deleting...")),
              ),
              key: ValueKey(datas),
              child: ListTile(
                title: Text(datas[index]),
              ));
        },
        itemCount: datas.length,
      ),
    );
  }
}

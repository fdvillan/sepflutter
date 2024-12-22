import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: backpress(),
    debugShowCheckedModeBanner: false,
  ));
}

class backpress extends StatelessWidget {
  const backpress({super.key});

  @override
  Widget build(BuildContext context) {
    Future<bool> shodilogebox() async {
      return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Exit!!"),
              content: Text(
                "Do you want to Exit the App!",
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text("Yes")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text("No")),
              ],
            );
          });
    }

    return WillPopScope(
      onWillPop: shodilogebox,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("welcome to flutter"),
              TextButton(
                onPressed: ()=> shodilogebox(),
                child: Text("Exit App"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

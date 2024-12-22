import 'dart:async';

import 'package:flutter/material.dart';
import 'login_v2.dart';

void main(){
  runApp(MaterialApp(home: InstagramSplash(),debugShowCheckedModeBanner: false,));
}
class InstagramSplash extends StatefulWidget {


  @override
  State<InstagramSplash> createState() => _InstagramSplashState();
}

class _InstagramSplashState extends State<InstagramSplash> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context){
            return LoginScreenv2();
          })
      );

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors .black,
        height: double.infinity,width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image(image: AssetImage("assets/background/instagram_new_logo.webp"),height: 90,width: 90),
            Spacer(),
            Text("from",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 20),),
            SizedBox(height: 10),
            Image (image: AssetImage("assets/background/instagram_meta_icon.png"),width: 95),
            SizedBox(height: 30),

          ],
        ),
      ),

    );
  }
}
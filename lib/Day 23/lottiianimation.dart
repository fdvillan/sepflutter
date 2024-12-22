
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: LottiAnimation(),));
}

class LottiAnimation extends StatefulWidget {
  const LottiAnimation({super.key});

  @override
  State<LottiAnimation> createState() => _LottiAnimationState();
}

class _LottiAnimationState extends State<LottiAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.asset("assets/lottie/animation.json"),),
    );
  }
}


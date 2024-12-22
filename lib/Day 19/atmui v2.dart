import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Atmcardui(),
    debugShowCheckedModeBanner: false,
  ));
}

class Atmcardui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      body: Center(
        child: Container(
          height: 250,
          width: 370,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [Colors.black, Colors.red],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 215,
                child: Image(
                  image: AssetImage("assets/chip/csb bank icon.png"),
                  height: 40,
                ),
              ),
              Positioned(
                top: 4,
                left: 253,
                child: Text(
                  "CSB Bank",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              Positioned(
                left: 30,
                top: 98,
                child: Image(
                  image: AssetImage("assets/chip/chip.png"),
                  height: 50,
                ),
              ),
              Positioned(
                left: 38,
                top: 142,
                child: Text(
                  "6322  3200  2345  9876",
                  style: GoogleFonts.denkOne(
                    color: Colors.white,
                    fontSize: 17,
                    letterSpacing: 6.0,
                  ),
                ),
              ),
              Positioned(
                top: 102,
                left: 305,
                child: Image(
                  image: AssetImage("assets/chip/rupay logo og.png"),
                  height: 37,
                ),
              ),
              Positioned(
                top: 102,
                left: 330,
                child: Image(
                  image: AssetImage("assets/chip/wifi.png"),
                  height: 37,
                ),
              ),

              Positioned(
                right: 27,
                top: 186,
                child: Text(
                  "RuPay",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 175,
                left: 170,
                child: Text(
                  "08/23",
                  style: GoogleFonts.denkOne(color: Colors.white, fontSize: 16),
                ),
              ),
              Positioned(
                top: 200,
                left: 35,
                child: Text(
                  "VINAYAK HEGDE",
                  style: GoogleFonts.abhayaLibre(
                      color: Colors.white, letterSpacing: 2.0, fontSize: 16),
                ),
              ),
              Positioned(right: 25,top: 215,child: Text("PLATINUM",style: TextStyle(color: Colors.white,fontSize: 10),))
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'hotel_room_uiv4.dart';
import 'register_page.dart';



void main() {
  runApp(
    const MaterialApp(
      home: LoginPage(),
    ),
  );
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[200],
          title: const Text("Login page"),
        ),
        body: Container(
          color: Colors.green[100],
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "Login page",
                  style: TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 60, right: 60),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      labelText: "user name",
                      hintText: "username",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 60, bottom: 70, right: 60),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "password",
                      labelText: "password",
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: const Icon(Icons.visibility_off),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      foregroundColor: Colors.green,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => HotelBookingApp()));

                  },
                  child: const Text("Login"),
              ),
              const SizedBox(height: 20),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
                  },
                  child: const Text("Not a user ? create an Account!"))
            ],
          ),
        ));
  }
}

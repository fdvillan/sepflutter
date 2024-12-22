import 'package:flutter/material.dart';

import '../Hotel_home_ui_Assignment_F.dart';

void main() {
  runApp(
    const MaterialApp(
      home: RegisterPage(),
    ),
  );
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[200],
          title: const Text("Register page"),
        ),
        body: Container(
          color: Colors.green[100],
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "Create Account",
                  style: TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 60, right: 60),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      labelText: "Full Name",
                      hintText: "Enter your full name",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 60, right: 60),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      labelText: "Email",
                      hintText: "Enter your email",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  validator:(name){
                    if(name!.isEmpty){
                      return"Enter valid name";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 60, right: 60),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Create password",
                      labelText: "Password",
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: const Icon(Icons.visibility_off),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 60, bottom: 40, right: 60),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Confirm password",
                      labelText: "Confirm Password",
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: const Icon(Icons.visibility_off),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                  obscureText: true,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      foregroundColor: Colors.green,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HotelBookingApp()));
                    // Add registration logic here
                  },
                  child: const Text("Register")),
              const SizedBox(height: 20),
              TextButton(
                  onPressed: () {
                    // Navigate back to login page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HotelBookingApp()));
                  },
                  child: const Text("Already have an account? Login"))
            ],
          ),
        ));
  }
}








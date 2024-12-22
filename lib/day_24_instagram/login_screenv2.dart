

import 'package:flutter/material.dart';
import 'package:sepflutter/day_24_instagram/register_screenv4a(1).dart';

import 'login_screen.dart';

void main() {
    runApp(MaterialApp(home: LoginScreenv2()));
  }

  class LoginScreenv2 extends StatelessWidget {
  const LoginScreenv2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),

              SizedBox(
                height: 57,
                width: 180,
                child: Image.asset(
                  "assets/background/instagram_text-nobg.png",
                  fit: BoxFit.contain,
                ),
              ),

              const Spacer(),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/cartoon/disha.png"),
              ),


              const SizedBox(height: 20),

              Text(
                'Dishana',
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 20),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: ElevatedButton(
                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                    return LoginScreen();
                  }));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Log in',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              TextButton(
                onPressed: () {},
                child: const Text(
                  'Search accounts',
                  style: TextStyle(color: Colors.blue),
                ),
              ),

              const Spacer(),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(

                  color: Colors.grey[50],
                  border: Border.all(
                    color: Colors.grey[300]!,

                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MobileNumberScreen()
                      )
                  );

                },
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14.0,
                      ),
                      children: [
                        TextSpan(text: "Don't have an account? "),
                        TextSpan(
                          text: "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )




            ],
          ),
        ),
      ),
    );
  }
}

























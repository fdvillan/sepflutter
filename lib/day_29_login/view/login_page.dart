
import 'package:flutter/material.dart';
import 'package:sepflutter/day_29_login/view/home_page_user_v2.dart';
import 'package:sepflutter/day_29_login/view/register_page_a1.dart';

void main() {
  runApp(MaterialApp(
    home: Loginpage(),
  ));
}

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  GlobalKey<FormState>formkey=GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Log in",
          style: TextStyle(color: Colors.limeAccent),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Form(key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "LoginPage",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 60, right: 60),
                child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "username",
                        labelText: "Username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    validator: (username) {
                      if (username!.isEmpty || !username.contains("@") ||
                          !username.contains(".com")) {
                        return "enter a valid email";
                      }
                      else {
                        return null;
                      }
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 50, left: 60, right: 60, bottom: 70),
                child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpass) {//
                                showpass = false;
                              } else {
                                showpass = true;
                              }
                            });
                          },
                          icon: Icon(showpass == true
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      hintText: "Password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: (password){
                    if(password!.isEmpty||password.length<6){return"enter a valid email";

                    }
                  },

                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {
                    var valid=formkey.currentState!.validate();
                    if(valid)Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepageuser()));
                  },
                  child: Text("Login")),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPageA1()));

                  }, child: Text("Not a User?Create an Account"))
            ],
          ),
        ),
      ),
    );
  }
}
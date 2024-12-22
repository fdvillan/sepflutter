
import 'package:flutter/material.dart';
import 'package:sepflutter/day_29_login/view/login_page.dart';

void main() {
  runApp(MaterialApp(
    home: RegisterPageA1(),
  ));
}

class RegisterPageA1 extends StatefulWidget {
  @override
  State<RegisterPageA1> createState() => _newrregisterpageState();
}

class _newrregisterpageState extends State<RegisterPageA1> {
  var formkey1= GlobalKey<FormState>();
  var conename= TextEditingController();
  var coneemail=TextEditingController();
  var pass= TextEditingController();
  var copass=TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  bool showpassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/1.webp"), fit: BoxFit.cover)),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Registration Page",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 160, right: 160,top: 40,bottom: 40),
                child: TextFormField(

                  decoration: InputDecoration(
                    hintText: "name",
                    labelText: "name",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    prefixIcon: Icon(Icons.person_2),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 160, right: 160,bottom: 60),
                child: TextFormField(
                  validator: (username) {
                    if (username!.isEmpty ||
                        username!.contains("@") ||
                        username.contains(".com")) {
                      return "reenter the name";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      hintText: "username",
                      labelText: "username",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 160, right: 160,bottom: 60),
                child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintText: "password",
                      labelText: "password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpass) {
                                showpass = false;
                              } else {
                                showpass = true;
                              }
                            });
                          },
                          icon: Icon(showpass == true
                              ? Icons.visibility_off
                              : Icons.visibility))),
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "enter a valid password";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 160, right: 160,),
                child: TextFormField(validator: (confirmpassword){if(
                confirmpassword!.isEmpty||confirmpassword.length<6
                ){
                  return "invalid password";
                }},
                  obscureText: showpassword,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintText: "confirm password",
                      labelText: "confirm password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpassword) {
                                showpassword = false;
                              } else {
                                showpassword = true;
                              }
                            });
                          },
                          icon: Icon(showpassword == true
                              ? Icons.visibility_off
                              : Icons.visibility))),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    var valid = formkey.currentState!.validate();
                    if (valid)
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Loginpage()));
                  },
                  child: Text("Login")),
              SizedBox(
                height: 40,
              ),
              TextButton(onPressed: () {}, child: Text("go to home "))
            ],
          ),
        ),
      ),
    );
  }
}
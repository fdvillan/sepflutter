import 'package:flutter/material.dart';
import 'package:sepflutter/Day%202/register_page_v2.dart';
import 'homepage.dart';

void main() {
  runApp(const MaterialApp(
    home: LoginWithValid(),
  ));
}

class LoginWithValid extends StatefulWidget {
  const LoginWithValid({super.key});

  @override
  State<LoginWithValid> createState() => _LoginWithValidState();
}

class _LoginWithValidState extends State<LoginWithValid> {
  GlobalKey<FormState> formKey = GlobalKey();
  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("login page"),
        ),
        body: Container(
          color: Colors.greenAccent,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Login ",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 60, right: 60),
                  child: TextFormField(
                    validator: (username) {
                      if (username!.isEmpty || !username.contains('@') || !username.contains(".com")) {
                        return "Enter valid email";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      labelText: "username",
                      hintText: "username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 50),
                  child: TextFormField(
                    obscureText: showPass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      labelText: "password",
                      hintText: "password",
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showPass) {
                              showPass = false;
                            } else {
                              showPass = true;
                            }
                          });
                        },
                        icon: Icon(showPass == true ? Icons.visibility_off : Icons.visibility),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ), //InputDecoration
                    ),
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return "Enter valid password";
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor:Colors.blue,
                    foregroundColor:Colors.white,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
                    onPressed: () {
                      var valid = formKey.currentState!.validate();
                      if (valid) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Homepage()));
                      }
                    },
                    child: const Text("login")),
                const SizedBox(height: 40,width: 30,),
                TextButton(
                  onPressed: () {
                    Navigator.push((context),MaterialPageRoute(builder:( context) =>const RegisterPage()));
                  },
                  child: const Text("Not a user ? create an account !"),
                ),
              ],
            ),
          ),
        ));
  }
}






















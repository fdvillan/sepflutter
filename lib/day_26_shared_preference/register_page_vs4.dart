import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sepflutter/day_26_shared_preference/login_page_vs2.dart';

import 'package:shared_preferences/shared_preferences.dart';



void main(){
  runApp(MaterialApp(home: RegisterPageVs4(),));
}

class RegisterPageVs4 extends StatefulWidget {
  const RegisterPageVs4({super.key});

  @override
  State<RegisterPageVs4> createState() => _RegistrationpagesState();
}

class _RegistrationpagesState extends State<RegisterPageVs4> {
  late SharedPreferences data;
  late bool newuser;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  GlobalKey<FormState> form = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration page"),
      ),
      body: Form(
        key: form,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60, top: 30),
              child: TextFormField(
                controller: namecontroller,
                decoration: InputDecoration(
                  hintText: "Name",
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (name) {
                  if (name!.isEmpty) {
                    return "Enter valid name";
                  }
                },),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60, top: 30),
              child: TextFormField(
                controller: usernamecontroller,
                decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Username",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))
                ),
                validator: (username) {
                  if (username!.isEmpty || !username.contains("@") ||
                      !username.contains(".com")) {
                    return "Enter Valid Email";
                  }else{
                    return null;
                  }
                },
              ),
            ),
            Padding(padding: const EdgeInsets.only(left: 60, right: 60, top: 30),
              child: TextFormField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),),
                ),
                validator: (password) {
                  if (password!.isEmpty || password.length < 6 ) {
                    return "Enter valid Password";
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  if(form.currentState!.validate()){
                    Registrationpage();
                  }
                }, child: Text("Login")),
          ],
        ),
      ),
    );
  }
  void Registrationpage() async {
    data = await SharedPreferences.getInstance();
    var name = namecontroller.text;
    var username = usernamecontroller.text;
    var password = passwordcontroller.text;
    if (name != '' && username != '' && password != '') {
      print("Registered Successfully");
      data.setString("name", name);
      data.setString("username", username);
      data.setString("password", password);
       Navigator.push(
          context, MaterialPageRoute(builder: (context) => Loginpagevs2()));
    }
  }
}



import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'home_pagevs2.dart';



void main()
{
  runApp(MaterialApp(
    home: LoginWithValidv1(),));
}

class LoginWithValidv1 extends StatefulWidget {
  const LoginWithValidv1({super.key});

  @override

   State<LoginWithValidv1> createState() => _LoginWithValidState();
}

class _LoginWithValidState extends State<LoginWithValidv1> {
  @override
  void initState(){
    checkuser();
    super.initState();
  }
  late SharedPreferences data;
   late bool newuser;
   TextEditingController usernamecontroller=TextEditingController();
   TextEditingController passwordcontrolller=TextEditingController();


  GlobalKey<FormState> formkey=GlobalKey();
  bool shapess=true;
  void checkuser()async{
    data=await SharedPreferences.getInstance();
    newuser=(data.getBool("newuser") ?? true);
    if(newuser==false){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePagevs2()));
    }
  }

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
                  controller:  usernamecontroller,

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
                  controller:  passwordcontrolller  ,
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
                    // Navigator.push(context,MaterialPageRoute(builder:(context)=>const Homepage()));
                    var username=usernamecontroller.text;
                    var password=passwordcontrolller.text;
                    if(username!='' && password !=''){
                      print("Login sucess");
                      data.setString("username", username);
                      data.setBool("newuser", false);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePagevs2()));
                    }
                  },
                  child: const Text("Login")),
              const SizedBox(height: 20),
              TextButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
                  },
                  child: const Text("Not a user ? create an Account!"))
            ],
          ),
        ));
  }
}























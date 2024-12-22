import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sepflutter/day_27_shared_preference/home_page_s2.dart';
import 'package:sepflutter/day_27_shared_preference/register_page_s3.dart';

import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: Loginpages1(),));
}
class Loginpages1 extends StatefulWidget {
  const Loginpages1 ({super.key});

  @override
  State<Loginpages1> createState() => _Loginpages1State();
}

class _Loginpages1State extends State<Loginpages1> {
  @override
  void initState(){
    super.initState();
    checkuser();
    getuser();
  }
  late SharedPreferences data;
  late bool newuser;
  late String regname;
  late String reguname;
  late String regpass;
  late String regage;
  late String reggender;
  late String regcourse;


  TextEditingController usernamecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  GlobalKey<FormState> formkey=GlobalKey();
  bool showpass=true;

  void getuser()async{
    data=await SharedPreferences.getInstance();

    regname = data.getString("name") ?? "";
    reguname = data.getString("username") ?? "";
    regpass = data.getString("password") ?? "";
    regage = data.getString("age") ?? "";
    reggender = data.getString("gender") ?? "";
    regcourse = data.getString("course") ?? "";
  }
  void checkuser()async{
    data= await SharedPreferences.getInstance();
    newuser=(data.getBool("new user")??true);
    if(newuser==false){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePageS2()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login page"),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text("Login" ,style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60,right: 60,top: 30),
                child: TextFormField(
                    controller: usernamecontroller,
                    decoration: InputDecoration(
                        labelText: "username",
                        hintText: "username",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
                    validator: (username){
                      if(username!.isEmpty || !username.contains('@')|| !username.contains(".com")){
                        return "Enter valid email";
                      }
                      else{
                        return null;
                      }
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60,right: 60,top: 20,bottom: 50,),
                child: TextFormField(
                  controller: passwordcontroller,
                  obscureText:showpass ,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      labelText: "password",
                      hintText: "password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(showpass){
                            showpass=false;
                          }
                          else{
                            showpass=true;
                          }
                        });
                      },
                          icon: Icon(showpass==true? Icons.visibility_off : Icons.visibility)),
                      border: OutlineInputBorder
                        (borderRadius: BorderRadius.circular(10))
                  ),
                  validator: (password){
                    if(password!.isEmpty  || password.length<6){
                      return "Enter valid password";
                    }
                  },
                ),
              ),
              ElevatedButton(onPressed: (){
                var username=usernamecontroller.text;
                var password=passwordcontroller.text;
                if(username!='' && password!='' || username==reguname || password==regpass){
                  print("login success");
                  data.getString("username", );
                  data.setString("name", regname);
                  data.setBool("newuser", false);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePageS2()));
                }
              },
                  child: Text("Login")),
              SizedBox(height: 20),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPageS3()));
              }, child: Text("Not a user ? create an Account !")),
            ],
          ),
        ),
      ),
    );
  }
}
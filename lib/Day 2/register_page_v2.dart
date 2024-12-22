import 'package:flutter/material.dart';

import 'login_with_valid.dart';

void main(){runApp(MaterialApp(home: RegisterPage(),));
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool showPass=true;
  bool showConformPass=true;
  GlobalKey<FormState> fromKey=GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink[200],
        child: Form(
          key: fromKey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text("REGISTER PAGE", style:  TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60,left: 60,right: 60),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.account_box),
                      hintText: "name",
                      labelText: "name",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  validator: (name){
                    if(name!.isEmpty){
                      return "Enter valid name";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 60,right: 60),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "username",
                      labelText: "username",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  validator: (username){
                    if(username!.isEmpty || !username.contains("@")|| !username.contains(".com")){
                      return "Enter valid email";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 60,right: 60),
                child: TextFormField(
                  obscureText: showPass,
                  obscuringCharacter: "*",
                  decoration:InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(onPressed:
                          (){
                        setState(() {
                          if(showPass){
                            showPass=false;
                          }
                          else{
                            showPass=true;
                          }
                        });
                      }, icon: Icon(showPass==true ?Icons.visibility_off :Icons.visibility)),
                      hintText: "password",
                      labelText: "Password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ) ,
                  validator: (password){
                    if(password!.isEmpty || password.length<6){
                      return "Enter valid password";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 60,right: 60,bottom: 60),
                child: TextFormField(
                  obscureText: showConformPass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),

                      suffixIcon: IconButton(onPressed:
                          (){
                        setState(() {
                          if(showConformPass){
                            showConformPass=false;
                          }
                          else{
                            showConformPass=true;
                          }
                        });
                      }, icon: Icon(showConformPass==true ?Icons.visibility_off :Icons.visibility)),
                      hintText: "confirm password",
                      labelText: "confirm password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  validator: (cPass){
                    if(cPass!.isEmpty || cPass.length<6){
                      return "Enter valid  confirm password";
                    }
                    return null;
                  },
                ),

              ),

              ElevatedButton(onPressed: (){
                final valid= fromKey.currentState!.validate();
                if(valid){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginWithValid()));
                }
              }, child: const Text("Register")),

            ],
          ),
        ),
      ),
    );
  }
}
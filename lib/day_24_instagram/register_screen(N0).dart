import 'package:flutter/material.dart';
import 'package:sepflutter/day_24_instagram/login_screen.dart';


void main()
{
   runApp(MaterialApp(
     home:RegisterScreen() ,));
 }

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                    width: 180,
                    child: Image.asset("assets/background/instagram_text.jpeg"),
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign up to see photos and pictures from your friends',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              const SizedBox(height: 20),


              Container(
                width: 327,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.facebook, color: Colors.white),
                    const SizedBox(width: 7),
                    const Text(
                      'Log in with Facebook',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // OR Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'OR',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),


              _buildTextField('Username'),
              const SizedBox(height: 15),
              _buildTextField('Email'),
              const SizedBox(height: 15),
              _buildTextField('Name'),
              const SizedBox(height: 15),
              _buildTextField('Password', obscureText: true),

              const SizedBox(height: 15),


              _buildButton('Register', onTap: () {

                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterScreen()));
              }),

              const SizedBox(height: 15),


              const Text(
                'By signing up, you agree to our Terms and Policy',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 120),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Have an account? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {

                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildTextField(String hintText, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
        ),
        fillColor: Colors.grey.shade700,
        filled: true,
        constraints: const BoxConstraints.tightFor(width: 327, height: 50),
        hintStyle: const TextStyle(color: Colors.grey),
        hintText: hintText,
      ),
    );
  }


  Widget _buildButton(String text, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 327,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}





















// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'instagram_splash.dart';
//
// void main()
// {
//   runApp(MaterialApp(
//     home:RegisterScreen() ,));
// }
//
// class RegisterScreen extends StatelessWidget {
//   const RegisterScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SingleChildScrollView(
//        child: Padding(
//          padding: EdgeInsets.all(16.0),
//          child: Column(
//            children: [
//              SizedBox(
//                height: 30,
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                  Container(
//                    height: 60,
//                    width: 180,
//                    child: Image(image: AssetImage("assets/background/instagram_text.jpeg")),
//
//                  )
//                ],
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                  Text('Sign up to see photos and pictures from your friends',style: TextStyle(color: Colors.white),)
//                ],
//              ),
//              const SizedBox(
//                height: 20,
//
//              ),
//              Container(
//                width: 327,
//                height: 40,
//                decoration: BoxDecoration(
//                  color: Colors.blue,borderRadius: BorderRadius.circular(10),
//
//
//                ),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: [
//                    const Icon(Icons.facebook, color: Colors.white),
//                    const SizedBox(width: 7),
//     SizedBox(
//       width: 7,
//
//     ),
//     Center(
//       child: Text('Log in with facebook',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//     )
//   ],
// ),
//              ),
//              const SizedBox(
//                height: 20,
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                  Container(
//                    height: 1,
//                    width: 150,
//                    color: Colors.grey.shade700,
//                  ),
//                  Padding(padding: EdgeInsets.all(8.0),
//                  child: Text('OR',style: TextStyle(color: Colors.grey.shade700),
//                  ),
//                  ),
//                  Container(
//                    height: 1,
//                    width: 150,
//                    color: Colors.grey.shade700,
//                  ),
//                  TextField(
//                    decoration: InputDecoration(
//                        border: OutlineInputBorder(
//                          borderRadius: BorderRadius.circular(11),
//                        ),
//                        fillColor: Colors.grey.shade700,
//                        prefixIconColor: Colors.white,
//                        filled: true,constraints:
//                    BoxConstraints.tightFor(width: 327,height: 50),
//                        hintStyle: TextStyle(color: Colors.grey),
//                        hintText: 'Username'),
//                  ),
//                  SizedBox(
//                    height: 15,
//                  ),
//                  TextField(
//                    decoration: InputDecoration(
//                        border: OutlineInputBorder(
//                          borderRadius: BorderRadius.circular(11),
//                        ),
//                        fillColor: Colors.grey.shade700,
//                        prefixIconColor: Colors.white,
//                        filled: true,constraints:
//                    BoxConstraints.tightFor(width: 327,height: 50),
//                        hintStyle: TextStyle(color: Colors.grey),
//                        hintText: 'Email'),
//                  ),
//                  SizedBox(
//                    height: 15,
//                  ),
//                  TextField(
//                    decoration: InputDecoration(
//                        border: OutlineInputBorder(
//                          borderRadius: BorderRadius.circular(11),
//                        ),
//                        fillColor: Colors.grey.shade700,
//                        prefixIconColor: Colors.white,
//                        filled: true,constraints:
//                    BoxConstraints.tightFor(width: 327,height: 50),
//                        hintStyle: TextStyle(color: Colors.grey),
//                        hintText: 'Name'),
//                  ),
//
//                  SizedBox(
//                    height: 15,
//                  ),
//                  TextField(
//                    decoration: InputDecoration(
//                        border: OutlineInputBorder(
//                          borderRadius: BorderRadius.circular(11),
//                        ),
//                        fillColor: Colors.grey.shade700,
//                        prefixIconColor: Colors.white,
//                        filled: true,constraints:
//                    BoxConstraints.tightFor(width: 327,height: 50),
//                        hintStyle: TextStyle(color: Colors.grey),
//                        hintText: 'Password'),
//                  ),
//                  SizedBox(
//                    height: 15,
//                  ),
//                  InkWell(
//                    onTap: (){
//                      Navigator.of(context).push(MaterialPageRoute(builder:(context)=>RegisterScreen()));
//                    },
//                    child: Container(
//                      width: 327,
//                      height: 50,
//                      decoration: BoxDecoration(color: Colors.blue,
//                          borderRadius: BorderRadius.circular(15)),
//                      child: Center(
//                        child: Text('Register',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
//                        ),
//                      ),
//                    ),
//                  ),
//                  SizedBox(
//                    height: 15,
//                  ),
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: [
//                      Text('By  signing up, you agree to our Terms and Policy',style: TextStyle(color: Colors.white),
//                      ),
//
//                    ],),
//
//                  SizedBox(
//                    height: 120,
//                  ),
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: [
//                      Text("Have an account?",style: TextStyle(color: Colors.white),
//                      ),
//                      InkWell(
//                        onTap: (){
//                          Navigator.of(context).push(MaterialPageRoute(builder:(context)=>InstagramSplash()));
//                        },
//                        child: Container(
//                          width: 327,
//                          height: 50,
//                          decoration: BoxDecoration(color: Colors.blue,
//                              borderRadius: BorderRadius.circular(15)),
//                          child: Center(
//                            child: Text('Sign up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
//                            ),
//                          ),
//                        ),
//                      ),
//
//                    ],
//                  )
//
//                ],
//              )
//            ],
//          ),
//        ),
//       ),
//     );
//   }
// }
//
//
//












import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RadioButton(),
  ));
}

class RadioButton extends StatefulWidget {

  const RadioButton({super.key});


  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String ? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button In Flutter"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    "Select your gender",
                    style: TextStyle(fontSize: 20),
                  ),
                  ListTile(
                    title: Text("Male"),
                    leading: Radio(
                        value: 'male',
                        groupValue: 'gender',
                        onChanged: (String? value){
                          setState(() {
                            gender=value;
                          });

                    }),
                  ),
                  ListTile(
                    title: Text("Female"),
                    leading: Radio(
                        value: 'female',
                        groupValue: 'gender',
                        onChanged: (String? value){
                          setState(() {
                            gender=value;
                          });

                        }),
                  ),
                  ListTile(
                    title: Text("other"),
                    leading: Radio(
                        value: 'other',
                        groupValue: 'gender',
                        onChanged: (String? value){
                          setState(() {
                            gender=value;
                          });

                        }),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

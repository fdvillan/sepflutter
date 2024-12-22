import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home: RadioButton(),));   ///1.start the app and show the radio button screen
}

class RadioButton extends StatelessWidget {
  const RadioButton({super.key});        ///2. this is a simple screen with a static layout(it doesn't change)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Radio Button Example'),
        ),
        body: const RadioButtonDemo(),
      ),
    );
  }
}

class RadioButtonDemo extends StatefulWidget {   ///3. create a state where things can change,like selecting a radio button
  const RadioButtonDemo({super.key});

  @override
  State<RadioButtonDemo> createState() => _RadioButtonDemoState();
}

class _RadioButtonDemoState extends State<RadioButtonDemo> {

  int selectedValue = 1; ///4. keeps track of which radio button is selected(1 or 2)

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        ListTile(                                   ///Display the options(radio button).when you select one,it updates the selected value
          title: const Text('Option 1'),
          leading: Radio(
            value: 1,
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
        ),
        // Second Radio Button
        ListTile(
          title: const Text('Option 2'),
          leading: Radio(
            value: 2,
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {                 ///6.updates a screen whenever a radio button is selected
                selectedValue = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}




/// this app shows two radio buttons. when you tap one, it update the selected option and rewards the screen
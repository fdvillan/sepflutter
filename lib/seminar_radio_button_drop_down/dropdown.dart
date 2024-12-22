import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Dropdown(),));
}

class Dropdown extends StatelessWidget {
  const Dropdown ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dropdown Example'),
        ),
        body: const DropdownDemo(),
      ),
    );
  }
}

class DropdownDemo extends StatefulWidget {
  const DropdownDemo({super.key});

  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {

  String selectedValue = 'Apple';

  final List<String> items = [
    'Apple',
    'Banana',
    'Orange',
    'Mango',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'Select a Fruit:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            DropdownButton<String>(
              value: selectedValue,
              isExpanded: true,
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Selected Item: $selectedValue',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
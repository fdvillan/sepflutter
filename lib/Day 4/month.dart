import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const ListViewBuilderScreen(),
    );
  }
}

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> companyList = [
      {
        'name': 'January',
      },
      {
        'name': 'Advertisement',
      },
      {
        'name': 'February ',
      },
      {
        'name': 'March',
      },
      {
        'name': 'April',
      },
      {
        'name': 'May',

      },
      {
        'name': 'Advertisement',
      },
      {
        'name': 'June',
      },
      {
        'name': 'July',
      },
      {
        'name': 'August',
      },
      {
        'name': 'September',
      },
      {
        'name': 'Advertisement',
      },
      {
        'name': 'October',
      },
      {
        'name': 'November',
      },
      {
        'name': 'December',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.blue ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ListView.builder(
          itemCount: companyList.length,
          itemBuilder: (context, index) {
            return Card(
              color: (companyList[index]['name']=="Advertisement")?Colors.red:Colors.white,
              elevation: 2,
              child: ListTile(
                  title: Text(
                    companyList[index]['name'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: (companyList[index]['name']=="Advertisement")?Colors.white:Colors.black,
                    ),
                  ),
                  ),
            );
          },
        ),
      ),
    );
  }
}

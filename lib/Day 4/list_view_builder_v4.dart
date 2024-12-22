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
        'name': 'Facebook',
        'price': 1356,
      },
      {
        'name': 'A 10 NETWORKS INC',
        'price': 1267,
      },
      {
        'name': 'Intel Corp ',
        'price': 1055,
      },
      {
        'name': 'HP inc',
        'price': 10.4546,
      },
      {
        'name': 'Advanced Micro Devices inc',
        'price': 1567.56,
      },
      {
        'name': 'Apple inc',
        'price': 13545,
      },
      {
        'name': 'Amazon com.inc',
        'price': 1664,
      },
      {
        'name': 'Microsoft Corporation',
        'price': 18989.6,
      },
      {
        'name': 'Facebook',
        'price': 13,
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'List View Builder',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[500],
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ListView.builder(
          itemCount: companyList.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              elevation: 2,
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue[700],
                    child: Text(
                        companyList[index]['name'].toString().substring(0,1),
                        style: const TextStyle(
                          color: Colors.white
                        ),
                    ),
                  ),
                  title: Text(
                    companyList[index]['name'],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Text(
                    '\$ ${companyList[index]['price']}',
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  )),
            );
          },
        ),
      ),
    );
  }
}

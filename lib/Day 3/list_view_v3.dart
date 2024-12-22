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
        primaryColor: Colors.red,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const FoodListScreen(),
    );
  }
}

class FoodListScreen extends StatelessWidget {
  const FoodListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> foodItems = [
      {'name': 'Donut', 'price': 13,},
      {'name': 'Pizza', 'price': 12},
      {'name': 'Cupcake', 'price': 10},
      {'name': 'Gingerbread', 'price': 10},
      {'name': 'JellyBean', 'price': 15},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Food List',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ListView.builder(
          itemCount: foodItems.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              elevation: 2,
              child: ListTile(
                leading: const Icon(
                  Icons.shopping_cart,
                  color: Colors.green,
                ),
                title: Text(
                  foodItems[index]['name'],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,

                  ),
                ),
                subtitle: Text(
                  'Price : ${foodItems[index]['price']}',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
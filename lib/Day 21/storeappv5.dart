import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(home: StoreApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class StoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Store',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: GroceryStoreHomePage(),
    );
  }
}

class GroceryStoreHomePage extends StatefulWidget {
  @override
  _GroceryStoreHomePageState createState() => _GroceryStoreHomePageState();
}

class _GroceryStoreHomePageState extends State<GroceryStoreHomePage> {
  final _products = [
    Product(
      name: 'Cabbage',
      image: 'assets/veg&fru/cabbage.jpg',
      price: 11.25,
    ),
    Product(
      name: ' Tomato',
      image: 'assets/veg&fru/tomato.jpg',
      price: 7.90,
    ),
    Product(
      name: 'Carrot',
      image: 'assets/veg&fru/carrot.jpeg',
      price: 5.80,
    ),
    Product(
      name: 'Potato',
      image: 'assets/veg&fru/potato.jpg',
      price: 12.30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search for products',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.filter_list_outlined),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {

            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {

            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Vegetables'),
              onTap: () {


              },
            ),
            ListTile(
              title: Text('Fruits'),
              onTap: () {


              },
            ),
            ListTile(
              title: Text('Meat'),
              onTap: () {


              },
            ),
            ListTile(
              title: Text('Fish'),
              onTap: () {


              },
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemCount: _products.length,
        itemBuilder: (context, index) {
          final product = _products[index];
          return ProductCard(product: product);
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: TextStyle(color: Colors.green),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    // Add product to cart
                  },
                  child: Text('+'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final String image;
  final double price;

  Product({
    required this.name,
    required this.image,
    required this.price,
  });
}
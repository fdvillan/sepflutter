import 'package:flutter/material.dart';
import 'package:sepflutter/storeappv11/order_page.dart';

import 'product_details_page.dart';

void main() {
  runApp(MaterialApp(
    home: GroceryStore(),
    debugShowCheckedModeBanner: false,
  ));
}

class GroceryStore extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Cabbage',
      'price': 11.25,
      'image': 'https://cdn.pixabay.com/photo/2017/07/11/19/29/bokchoy-2494763_1280.png',
      'type': 'Fresh Product'
    },
    {
      'name': 'Tomato',
      'price': 7.90,
      'image': 'https://cdn.pixabay.com/photo/2014/06/18/23/15/vegetable-371918_1280.jpg',
      'type': 'Daily Product'
    },
    {
      'name': 'Carrot',
      'price': 5.80,
      'image': 'https://cdn.pixabay.com/photo/2019/06/17/17/45/carrots-4280473_960_720.jpg',
      'type': 'Fresh Product'
    },
    {'name': 'Potato', 'price': 12.30, 'image': 'https://images.unsplash.com/photo-1518977676601-b53f82aba655', 'type': 'Fresh Product'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Store',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart_outlined,size: 30, color: Colors.black),
                onPressed: () {},
              ),
              Positioned(
                right: 7,
                top: 2,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for products',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.filter_list),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                CategoryChip(
                  icon: Icons.eco,
                  label: 'Vegetables',
                  isSelected: true,
                ),
                CategoryChip(
                  icon: Icons.apple,
                  label: 'Fruits',
                ),
                CategoryChip(
                  icon: Icons.food_bank,
                  label: 'Meat',
                ),
                CategoryChip(
                  icon: Icons.food_bank,
                  label: 'Fish',
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductDetailsPage()));
                  },
                  child: ProductCard(
                    name: products[index]['name'],
                    price: products[index]['price'],
                    image: products[index]['image'],
                    type: products[index]['type'],
                  ),
                );
              },
            ),
          ),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            onTap: (index){
              if(index==3){
                Navigator.push((context),MaterialPageRoute(builder:( context) =>OrdersPage()));
              }
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  const CategoryChip({
    Key? key,
    required this.icon,
    required this.label,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.white : Colors.grey,
            size: 20,
          ),
          SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final double price;
  final String image;
  final String type;

  const ProductCard({
    Key? key,
    required this.name,
    required this.price,
    required this.image,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  type,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

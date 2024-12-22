import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home: OrdersPage()));
}


class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  String selectedFilter = 'All';

  final List<Map<String, dynamic>> orders = [
    {
      'name': 'Pork Chops (2kg)',
      'price': 52.25,
      'status': 'Processing',
      'date': 'June 15, 2024',
      'image': 'https://images.unsplash.com/photo-1432139555190-58524dae6a55',
    },
    {
      'name': 'Banana (2 Pcs)',
      'price': 15.50,
      'status': 'Pending',
      'date': 'June 14, 2024',
      'image': 'https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e',
    },
    {
      'name': 'Cabbage (1 Pcs)',
      'price': 5.75,
      'status': 'Delivered',
      'date': 'June 13, 2024',
      'image': 'https://cdn.pixabay.com/photo/2017/07/11/19/29/bokchoy-2494763_1280.png',
    },
    {
      'name': 'Potato (3 kg)',
      'price': 25.70,
      'status': 'Delivered',
      'date': 'June 12, 2024',
      'image': 'https://images.unsplash.com/photo-1518977676601-b53f82aba655',
    },
    {
      'name': 'Bangla Tomato (2 kg)',
      'price': 14.10,
      'status': 'Processing',
      'date': 'June 11, 2024',
      'image': 'https://cdn.pixabay.com/photo/2014/06/18/23/15/vegetable-371918_1280.jpg',
    },
  ];

  List<Map<String, dynamic>> get filteredOrders {
    if (selectedFilter == 'All') return orders;
    return orders.where((order) => order['status'] == selectedFilter).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Order',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          // Status Filter Chips
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                FilterChip(
                  label: 'All',
                  isSelected: selectedFilter == 'All',
                ),
                FilterChip(
                  label: 'Pending',
                  isSelected: selectedFilter == 'Pending',
                ),
                FilterChip(
                  label: 'Processing',
                  isSelected: selectedFilter == 'Processing',
                ),
                FilterChip(
                  label: 'Delivered',
                  isSelected: selectedFilter == 'Delivered',
                ),
              ],
            ),
          ),

          // Orders List
          Expanded(
            child: ListView.builder(
              itemCount: filteredOrders.length,
              padding: EdgeInsets.all(16),
              itemBuilder: (context, index) {
                final order = filteredOrders[index];
                return OrderCard(order: order);
              },
            ),
          ),

          // Bottom Navigation Bar
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.green,
            currentIndex: 3,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_view),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: '',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget FilterChip({required String label, required bool isSelected}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedFilter = label;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 12),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.green : Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final Map<String, dynamic> order;

  const OrderCard({Key? key, required this.order}) : super(key: key);

  Color getStatusColor() {
    switch (order['status']) {
      case 'Delivered':
        return Colors.green;
      case 'Processing':
        return Colors.orange;
      case 'Pending':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Product Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              order['image'],
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),

          // Order Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  order['name'],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '\$${order['price'].toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  order['status'],
                  style: TextStyle(
                    color: getStatusColor(),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          // Date
          Text(
            order['date'],
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
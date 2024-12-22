import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const CitiesListScreen(),
    );
  }
}

class CitiesListScreen extends StatelessWidget {
  const CitiesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'Cities Around World',
          style: TextStyle(
            color: Colors.white,

          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
        children: const [
          CityCard(
            cityName: 'Delhi',
            country: 'India',
            population: '32.9 mill',
            imageUrl: 'assets/images/countries/delhi.jpg',
          ),
          SizedBox(height: 20),
          CityCard(
            cityName: 'Finland',
            country: 'Europe',
            population: '5.54 mill',
            imageUrl: 'assets/images/countries/finland.jpg',
          ),
          SizedBox(height: 20),
          CityCard(
            cityName: 'London',
            country: 'UK',
            population: '8.8 mill',
            imageUrl: 'assets/images/countries/london.jpg',
          ),
          SizedBox(height: 20),
          CityCard(
            cityName: 'Vancouver',
            country: 'Canada',
            population: '2.6 mill',
            imageUrl: 'assets/images/countries/vancouver.jpg',
          ),
          SizedBox(height: 20),
          CityCard(
            cityName: 'New York',
            country: 'USA',
            population: '3.4 mill',
            imageUrl: 'assets/images/countries/newyork.jpg',
          ),
        ],
      ),
    );
  }
}

class CityCard extends StatelessWidget {
  final String cityName;
  final String country;
  final String population;
  final String imageUrl;

  const CityCard({
    Key? key,
    required this.cityName,
    required this.country,
    required this.population,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.amber[700],
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10,),
          Image.asset(
            imageUrl,
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(
            width: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                cityName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                country,
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "Population : $population",
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


//assets/images/countries/finland.jpg
//assets/images/countries/vancouver.jpg

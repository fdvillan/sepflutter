


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: HomePageS2(),));
}



class HomePageS2 extends StatefulWidget {
  const HomePageS2 ({super.key});

  @override
  State<HomePageS2> createState() => _HomePageS2State();
}

class _HomePageS2State extends State<HomePageS2> {
  String name = '';
  String username = '';
  String age = '';
  String gender = '';
  String course = '';

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  void loadUserData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? 'No Name';
      username = prefs.getString('username') ?? 'No Email';
      age = prefs.getString('age') ?? 'No Age';
      gender = prefs.getString('gender') ?? 'No Gender';
      course = prefs.getString('course') ?? 'No Course';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInfoRow('Email', username),
                    _buildInfoRow('Age', age),
                    _buildInfoRow('Gender', gender),
                    _buildInfoRow('Course', course),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
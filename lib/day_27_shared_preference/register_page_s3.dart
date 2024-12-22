



import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_page_s1.dart';


void main() {
  runApp(MaterialApp(home: RegisterPageS3()));
}

class RegisterPageS3 extends StatefulWidget {
  const RegisterPageS3({super.key});

  @override
  State<RegisterPageS3> createState() => _RegisterPageS3State();
}

class _RegisterPageS3State extends State<RegisterPageS3> {
  late SharedPreferences data;
  late bool newuser;

  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController ageController = TextEditingController();


  String? selectedGender;
  String? selectedCourse;

  List<String> genders = ['Male', 'Female', 'Other'];
  List<String> courses = [
    'Computer Science',
    'Engineering',
    'Business',
    'Arts',
    'Medicine'
  ];

  GlobalKey<FormState> formKey = GlobalKey<FormState>(); // Corrected form key
  bool showpass = true;

  void registerUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("name", nameController.text);
    await prefs.setString("username", usernameController.text);
    await prefs.setString("password", passwordController.text);
    await prefs.setString("age", ageController.text);
    await prefs.setString("gender", selectedGender ?? "");
    await prefs.setString("course", selectedCourse ?? "");
    await prefs.setBool("newuser", false);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Loginpages1()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || !value.contains('@')) {
                      return "Please enter a valid email";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: ageController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Age",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your age";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: "Gender",
                    border: OutlineInputBorder(),
                  ),
                  value: selectedGender,
                  items: genders.map((gender) {
                    return DropdownMenuItem(
                      value: gender,
                      child: Text(gender),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return "Please select a gender";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: "Course",
                    border: OutlineInputBorder(),
                  ),
                  value: selectedCourse,
                  items: courses.map((course) {
                    return DropdownMenuItem(
                      value: course,
                      child: Text(course),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCourse = value;
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return "Please select a course";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      registerUser();
                    }
                  },
                  child: Text("Register"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

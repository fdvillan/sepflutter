// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:sepflutter/day_25_shared_preference/login_page_vs1.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
//
// void main(){
//   runApp(MaterialApp(home: HomePagevs2(),));
// }
//
//
// class HomePagevs2 extends StatefulWidget {
//   const HomePagevs2 ({super.key});
//
//   @override
//   State<HomePagevs2> createState() => _HomePagevs2State();
// }
//
// class _HomePagevs2State extends State<HomePagevs2> {
//
//   @override
//   void initState(){
//     ftechdata();
//     super.initState();
//   }
//
//
// late  SharedPreferences data;
// late String username;
//
// void ftechdata()async{
//   data=await SharedPreferences.getInstance();
//   setState(() {
//     username=data.getString("username")!;
//   });
// }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Text("$username"),
//           ElevatedButton(onPressed:(){
//             data.setBool("newuser", true);
//             Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginWithValidv1()));
//           },child: Text("logout")),
//         ],
//       ),
//
//     );
//   }
// }
//
//
//













import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_page_vs1.dart';





void main(){runApp(MaterialApp(home: HomePagevs2(),));
}

class HomePagevs2 extends StatefulWidget {
  const HomePagevs2({Key? key}) : super(key: key);

  @override
  State<HomePagevs2> createState() => _HomePagevs2State();
}

class _HomePagevs2State extends State<HomePagevs2> {
  late SharedPreferences _prefs;
  String _username = '';
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    try {
      _prefs = await SharedPreferences.getInstance();
      setState(() {
        _username = _prefs.getString('username') ?? 'User';
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error loading user data: $e')),
      );
    }
  }

  void _logout() {
    try {
      _prefs.setBool('newuser', true);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginWithValidv1()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Logout failed: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, $_username',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _logout,
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

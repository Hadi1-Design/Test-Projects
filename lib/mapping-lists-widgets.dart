import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Container Practice',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Loginpage(email: '', password: ''),
    );
  }
}

class Loginpage extends StatefulWidget {
  /*when this class will be called/navigated from other page,
   * the constructor will be called with the values given 
   * from the navigator class
   */
  final String email;
  final String password;
  const Loginpage({super.key, required this.email, required this.password});

  @override
  State<Loginpage> createState() => LoginpageState();
}

class LoginpageState extends State<Loginpage> {
  // var arrlist = [
  //   "Alice",
  //   "Bob",
  //   "Charlie",
  //   "David",
  //   "Emma",
  //   "Frank",
  //   "Grace",
  //   "Henry",
  //   "Ivy",
  //   "Jack",
  // ];

  //map
  var arrlist = [
    {"name": "Alice", "mobno": "+1234567890", "unread": 2},
    {"name": "Bob", "mobno": "+1234567891", "unread": 0},
    {"name": "Charlie", "mobno": "+1234567892", "unread": 5},
    {"name": "David", "mobno": "+1234567893", "unread": 1},
    {"name": "Emma", "mobno": "+1234567894", "unread": 0},
    {"name": "Frank", "mobno": "+1234567895", "unread": 3},
    {"name": "Grace", "mobno": "+1234567896", "unread": 7},
    {"name": "Henry", "mobno": "+1234567897", "unread": 0},
    {"name": "Ivy", "mobno": "+1234567898", "unread": 4},
    {"name": "Jack", "mobno": "+1234567899", "unread": 12},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome To Ahad Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: ListView(
          children: arrlist.map((value) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(value['name'].toString()),
              subtitle: Text(value['mobno'].toString()),
              trailing: CircleAvatar(
                radius: 12,
                child: Text(value['unread'].toString()),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

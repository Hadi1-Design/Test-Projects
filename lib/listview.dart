import 'package:flutter/material.dart';
import 'package:test_project_1/ui_layouts/util.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Ahad',
      'Ali',
      'Butt',
      'Ahmed',
      "Ali",
      "Butt",
      "Hello Ahad",
      "Adding",
      "Some",
      "More",
      "Details",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome To Ahad Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemCount: arrNames.length,
        // reverse: true,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/avatar.jpg"),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.blue,
              radius: 20,
              // minRadius: 20, //any image will not go smaller then 20 radius
              // maxRadius: 30, //any image will not go smaller then 30 radius
            ),
            title: Text(arrNames[index], style: mytextstyle20()),
            subtitle: Text("Name", style: mytextstyle12()),
            trailing: Icon(Icons.add),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(height: 2, thickness: 2);
        },
      ),
    );
  }
}

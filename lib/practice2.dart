import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_project_1/ui_layouts/util.dart';
import 'package:intl/intl.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white, // Makes notification bar background white
      statusBarIconBrightness: Brightness
          .dark, // Makes icons (time, battery) dark grey/black so they stay visible
      statusBarBrightness: Brightness.light,
    ),
  ); // Required for iOS support
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Welcome To New App",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
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
  var emailText = TextEditingController();
  var passText = TextEditingController();
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: AppBar(title: Text("Welcome To My App")),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(Icons.menu, size: 30),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(Icons.location_on, size: 20),
                          ),
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pickup From",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Rawalpindi",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Text(
                      "KFC",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //width: 80,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 232, 232),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Transform.flip(
                            flipX: true,
                            child: Icon(Icons.delivery_dining),
                          ),
                          SizedBox(width: 8),
                          Text("Delivery", style: TextStyle(fontSize: 17)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    //width: 80,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 232, 232),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Transform.flip(
                            flipX: true,
                            child: Icon(Icons.takeout_dining),
                          ),
                          SizedBox(width: 8),
                          Text("Pickup", style: TextStyle(fontSize: 17)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    //width: 80,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 232, 232),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Transform.flip(
                            flipX: true,
                            child: Icon(Icons.checkroom),
                          ),
                          SizedBox(width: 8),
                          Text("Merch", style: TextStyle(fontSize: 17)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Padding(
                  padding: EdgeInsetsGeometry.only(left: 19),
                  child: Text(
                    "What's new",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 130,
                  width: 355,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    image: DecorationImage(
                      image: AssetImage('assets/images/image1.jpeg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 355,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.red,
                  ),
                  child: Text(
                    "REORDER",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 170,
                width: 355,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlueAccent,
                  image: DecorationImage(
                    image: AssetImage("assets/images/image2.jpeg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.only(left: 19),
                    child: Text(
                      "Explore menu",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.only(right: 19),
                    child: Text(
                      "View all",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 19),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.white,
                      ),
                      height: 250,
                      width: 104,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Promotion",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 125,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/image3.jpeg',
                                  ),
                                  fit: BoxFit.contain,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 3),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.black,
                              width: 1,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: 123.5,
                          width: 119,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 62.5,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/image4.jpeg',
                                      ),
                                      fit: BoxFit.contain,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Everyday Value",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 3),
                        Container(
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          height: 123.5,
                          width: 119,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 62.5,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/image4.jpeg',
                                      ),
                                      fit: BoxFit.contain,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Ala-Carte-&-Combos",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 3),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          height: 123.5,
                          width: 119,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 62.5,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/image5.jpeg',
                                      ),
                                      fit: BoxFit.contain,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Signature Boxes",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 3),
                        Container(
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          height: 123.5,
                          width: 119,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 62.5,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/image6.jpeg',
                                      ),
                                      fit: BoxFit.contain,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Sharing",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 19),
                  child: Text(
                    "Best Sellers",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 19),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.white,
                      ),
                      height: 220,
                      width: 150,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Promotion",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 125,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/image3.jpeg',
                                  ),
                                  fit: BoxFit.contain,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 3),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.white,
                      ),
                      height: 220,
                      width: 150,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Promotion",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 125,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/image3.jpeg',
                                  ),
                                  fit: BoxFit.contain,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 3),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.white,
                      ),
                      height: 220,
                      width: 150,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Promotion",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 125,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/image3.jpeg',
                                  ),
                                  fit: BoxFit.contain,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 3),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.white,
                      ),
                      height: 220,
                      width: 150,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Promotion",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 125,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/image3.jpeg',
                                  ),
                                  fit: BoxFit.contain,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 3),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.white,
                      ),
                      height: 220,
                      width: 150,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Promotion",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 125,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/image3.jpeg',
                                  ),
                                  fit: BoxFit.contain,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.only(left: 19),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Top Deals",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 19),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.white,
                      ),
                      height: 100,
                      width: 300,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 80,
                            width: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/image6.jpeg"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 3),
                                height: 78,
                                width: 205,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Zinger, Strips N' Dips",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Rs 2490",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    SizedBox(height: 10),
                                    Divider(height: 1, color: Colors.black),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,

                                      children: [
                                        Text(
                                          "Rs 2490",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 3),
                                          height: 25,
                                          width: 40,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Colors.red,
                                              width: 1,
                                            ),
                                          ),
                                          child: Text(
                                            "VIEW",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // child: ,
                    ),
                    // SizedBox(width: 3),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.white,
                      ),
                      height: 100,
                      width: 300,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 80,
                            width: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/image3.jpeg"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 3),
                                height: 78,
                                width: 205,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Snack Box",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Rs 2490",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    SizedBox(height: 10),
                                    Divider(height: 1, color: Colors.black),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,

                                      children: [
                                        Text(
                                          "Rs 2490",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 3),
                                          height: 25,
                                          width: 40,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Colors.red,
                                              width: 1,
                                            ),
                                          ),
                                          child: Text(
                                            "VIEW",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // child: ,
                    ),
                    // SizedBox(width: 3),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        color: Colors.white,
                      ),
                      height: 100,
                      width: 300,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 80,
                            width: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/image5.jpeg"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 3),
                                height: 78,
                                width: 205,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Crispy Bucket",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Rs 2490",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    SizedBox(height: 10),
                                    Divider(height: 1, color: Colors.black),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,

                                      children: [
                                        Text(
                                          "Rs 2490",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 3),
                                          height: 25,
                                          width: 40,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Colors.red,
                                              width: 1,
                                            ),
                                          ),
                                          child: Text(
                                            "VIEW",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // child: ,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 100,
                      width: 50,
                      color: Colors.yellow,
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      height: 100,
                      width: 50,
                      color: Colors.green,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Current Time: ${DateFormat("jms").format(time)} ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 8),
                                ),

                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    minimumSize: Size.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    "Current Time",
                                    style: TextStyle(fontSize: 8),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Select Date", style: mytextstyle12()),
                                ElevatedButton(
                                  onPressed: () async {
                                    DateTime? datepicker = await showDatePicker(
                                      context: context,
                                      initialDate:
                                          selectedDate ?? DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2050),
                                    );

                                    if (datepicker != null) {
                                      setState(() {
                                        selectedDate = datepicker;
                                      });
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    minimumSize: Size.zero,
                                    alignment: Alignment.center,
                                  ),
                                  child: Text(
                                    selectedDate == null
                                        ? 'Pick a Date'
                                        : 'Selected: ${selectedDate!.toLocal().toString().split(' ')[0]}', // Added .toString() and fixed split location
                                    style: TextStyle(fontSize: 8),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 50,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 5),
              SizedBox(
                height: 600,
                child: Column(
                  children: [
                    Expanded(flex: 1, child: Container(color: Colors.brown)),
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.white,
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 250,
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextField(
                                    controller: emailText,
                                    // enabled: false,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        //gets effects when clicked on textbox
                                        borderSide: BorderSide(
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        //gets effect when not clicked on textbox
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        //works only when the text field enabled : false.
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2,
                                        ),
                                      ),
                                      /*suffix,prefix always shown when textfield is tapped.
                                        hint is shown default, without tapping*/
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: Colors.blue,
                                      ),
                                      hintText: "Enter Email",
                                      suffixIcon: SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: IconButton(
                                            onPressed: () {},
                                            padding: EdgeInsets.zero,
                                            constraints: BoxConstraints(),
                                            icon: Icon(
                                              Icons.remove_red_eye,
                                              size: 15,
                                              color: Colors.orange,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  TextField(
                                    // enabled: false,
                                    keyboardType: TextInputType.phone,
                                    controller: passText,
                                    obscureText: true,
                                    obscuringCharacter: '*',
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        //gets effects when clicked on textbox
                                        borderSide: BorderSide(
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        //gets effect when not clicked on textbox
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                        ),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        //works only when the text field enabled : false.
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2,
                                        ),
                                      ),
                                      /*suffix,prefix always shown when textfield is tapped.
                                        hint is shown default, without tapping*/
                                      prefixIcon: Icon(
                                        Icons.key,
                                        color: Colors.blue,
                                      ),
                                      hintText: "Enter Password",
                                      suffixIcon: SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: IconButton(
                                            onPressed: () {},
                                            padding: EdgeInsets.zero,
                                            constraints: BoxConstraints(),
                                            icon: Icon(
                                              Icons.remove_red_eye,
                                              size: 15,
                                              color: Colors.orange,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      minimumSize: Size(50, 30),
                                    ),
                                    onPressed: () {
                                      String email = emailText.text;
                                      String pass = passText.text;

                                      print("Email: $email    Password: $pass");
                                    },
                                    child: Text(
                                      "login",
                                      style: mytextstyle12(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        // height: 200,
                        color: Colors.blue,
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 100,
                                    width: 110,
                                    child: Card(
                                      margin: EdgeInsets.zero,
                                      color: const Color.fromARGB(
                                        255,
                                        82,
                                        79,
                                        78,
                                      ),
                                      elevation: 11,
                                      shadowColor: Colors.black,
                                      shape: BeveledRectangleBorder(),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "HELLO CARD",
                                          style: mytextstyle20(),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 100,
                                    width: 110,
                                    child: Card(
                                      margin: EdgeInsets.zero,
                                      color: const Color.fromARGB(
                                        255,
                                        82,
                                        79,
                                        78,
                                      ),
                                      elevation: 11,
                                      shadowColor: Colors.black,
                                      shape: BeveledRectangleBorder(),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "HELLO CARD",
                                          style: mytextstyle20(),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 100,
                                    width: 110,
                                    child: Card(
                                      margin: EdgeInsets.zero,
                                      color: const Color.fromARGB(
                                        255,
                                        82,
                                        79,
                                        78,
                                      ),
                                      elevation: 11,
                                      shadowColor: Colors.black,
                                      shape: BeveledRectangleBorder(),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "HELLO CARD",
                                          style: mytextstyle20(),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 100,
                                    width: 110,
                                    child: Card(
                                      margin: EdgeInsets.zero,
                                      color: const Color.fromARGB(
                                        255,
                                        82,
                                        79,
                                        78,
                                      ),
                                      elevation: 11,
                                      shadowColor: Colors.black,
                                      shape: BeveledRectangleBorder(),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "HELLO CARD",
                                          style: mytextstyle20(),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 100,
                                    width: 110,
                                    child: Card(
                                      margin: EdgeInsets.zero,
                                      color: const Color.fromARGB(
                                        255,
                                        82,
                                        79,
                                        78,
                                      ),
                                      elevation: 11,

                                      shadowColor: Colors.black,
                                      shape: BeveledRectangleBorder(),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "HELLO CARD",
                                          style: mytextstyle20(),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 100,
                                    width: 110,
                                    child: Card(
                                      margin: EdgeInsets.zero,
                                      color: const Color.fromARGB(
                                        255,
                                        82,
                                        79,
                                        78,
                                      ),
                                      elevation: 11,
                                      shadowColor: Colors.black,
                                      shape: BeveledRectangleBorder(),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "HELLO CARD",
                                          style: mytextstyle20(),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 100,
                                    width: 110,
                                    child: Card(
                                      margin: EdgeInsets.zero,
                                      color: const Color.fromARGB(
                                        255,
                                        82,
                                        79,
                                        78,
                                      ),
                                      elevation: 11,
                                      shadowColor: Colors.black,
                                      shape: BeveledRectangleBorder(),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "HELLO CARD",
                                          style: mytextstyle20(),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 100,
                                    width: 110,
                                    child: Card(
                                      margin: EdgeInsets.zero,
                                      color: const Color.fromARGB(
                                        255,
                                        82,
                                        79,
                                        78,
                                      ),
                                      elevation: 11,
                                      shadowColor: Colors.black,
                                      shape: BeveledRectangleBorder(),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "HELLO CARD",
                                          style: mytextstyle20(),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 100,
                                    width: 110,
                                    child: Card(
                                      margin: EdgeInsets.zero,
                                      color: const Color.fromARGB(
                                        255,
                                        82,
                                        79,
                                        78,
                                      ),
                                      elevation: 11,
                                      shadowColor: Colors.black,
                                      shape: BeveledRectangleBorder(),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "HELLO CARD",
                                          style: mytextstyle20(),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Image.asset(
          "assets/images/fabimg.png",
          fit: BoxFit.contain,
          width: 60,
          height: 60,
        ),
      ),
    );
  }
}

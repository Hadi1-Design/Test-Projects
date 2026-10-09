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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome To Ahad Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                //height: 500,
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(width: 5, color: Colors.black),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 25,
                      spreadRadius: 7,
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/avatar.jpg'),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Ahad Ali Butt",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Flutter Developer",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: SizedBox(
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  print("120 POSTS");
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      '120',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Posts',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),

                              InkWell(
                                onTap: () {
                                  print("45 FOLLOWERS");
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      '45',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Followers',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  print("890 LIKES");
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      '890',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Likes',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: SizedBox(
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 110,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {
                                    print('New Follower');
                                  },
                                  child: Text(
                                    "Follow",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                width: 110,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.cyanAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {
                                    print('Message Recieved');
                                  },
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.yellow,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 300,
                            color: Colors.brown,
                          ),
                          Container(
                            height: 100,
                            width: 300,
                            color: Colors.green,
                          ),
                          Container(
                            height: 100,
                            width: 300,
                            color: Colors.white,
                          ),
                          Container(
                            height: 100,
                            width: 300,
                            color: Colors.black,
                          ),
                          Container(
                            height: 100,
                            width: 300,
                            color: Colors.blue,
                          ),
                          Container(
                            height: 100,
                            width: 300,
                            color: Colors.purple,
                          ),
                          Container(
                            height: 100,
                            width: 300,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.green,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.brown,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

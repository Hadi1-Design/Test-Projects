import 'dart:async';

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
      home: const Loginpage2(email: '', password: ''),
    );
  }
}

class Loginpage2 extends StatefulWidget {
  /*when this class will be called/navigated from other page,
   * the constructor will be called with the values given 
   * from the navigator class
   */
  final String email;
  final String password;
  const Loginpage2({super.key, required this.email, required this.password});

  @override
  State<Loginpage2> createState() => Loginpage2State();
}

class Loginpage2State extends State<Loginpage2>
    with SingleTickerProviderStateMixin {
  var _height = 100;
  var _width = 200;
  var _color;
  bool flag = true;
  RangeValues values = RangeValues(0, 1);
  bool _iffirst = true;

  //tween animation
  late Animation animation;
  late Animation colorAnimation;
  late AnimationController animationController;
  var listradius = [150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      reload();
    });

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(animationController);
    colorAnimation = ColorTween(
      begin: Colors.amberAccent,
      end: Colors.red,
    ).animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });

    animationController.forward();
  }

  void reload() {
    setState(() {
      _iffirst = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
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
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Hero(
                        tag: "heroimg",
                        child: Image.asset(
                          "assets/images/image5.jpeg",
                          height: 200,
                          width: double.infinity,
                        ),
                      ),

                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              'assets/images/avatar.jpg',
                            ),
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
                      SizedBox(height: 5),
                      Text("Email: ${widget.email}"),
                      /*widget. is used coz email is defined in loginpage class
                        *and is being called in text from Loginpagestate class, both classes diffeent.
                        *so widget. helps us to take value from the widget that created the object of
                        *Loginpagestate widget
                        */
                      SizedBox(height: 5),
                      Text("Passowrd: ${widget.password}"),
                      SizedBox(height: 5),

                      RangeSlider(
                        values: values,
                        divisions: 10,
                        labels: labels,
                        // max: 100,
                        // min: 0,
                        activeColor: Colors.green,
                        inactiveColor: Colors.green.shade50,
                        onChanged: (newvalue) {
                          values = newvalue;
                          setState(() {});
                        },
                      ),

                      AnimatedContainer(
                        margin: EdgeInsets.only(bottom: 10),
                        duration: Duration(
                          seconds: 2,
                        ), //time of aniamtion to run less = fast, large = slow
                        width: _width.toDouble(),
                        height: _height.toDouble(),
                        color: _color,
                        curve: Curves.bounceOut,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (flag) {
                            _width = 100;
                            _height = 200;
                            _color = Colors.orange;
                            flag = false;
                          } else {
                            _width = 200;
                            _height = 100;
                            _color = Colors.blue;
                            flag = true;
                          }
                          setState(() {});
                        },
                        child: Text("Animate"),
                      ),
                      Container(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: AnimatedCrossFade(
                          firstChild: Container(
                            height: 200,
                            width: 200,
                            color: Colors.amber,
                          ),
                          secondChild: Image.asset(
                            "assets/images/avatar.jpg",
                            height: 50,
                            width: 50,
                          ),
                          sizeCurve: Curves.fastOutSlowIn,
                          firstCurve: Curves.easeInOut,
                          secondCurve: Curves.bounceIn,
                          crossFadeState: (_iffirst)
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                          duration: Duration(seconds: 3),
                        ),
                      ),
                      Container(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: animation.value,
                          width: animation.value,
                          color: colorAnimation.value,
                        ),
                      ),
                      Container(height: 10),

                      //tween ripple animation
                      Container(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            ...listradius.map((radius) {
                              return Container(
                                width: radius * animation.value,
                                height: radius * animation.value,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue.withOpacity(
                                    1.0 - animation.value,
                                  ),
                                ),
                              );
                            }).toList(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

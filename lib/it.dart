import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  var no1controller = TextEditingController();
  var no2controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Statefull Widgets")),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue.shade100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: no1controller,
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: no2controller,
                keyboardType: TextInputType.number,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      var no1 = int.parse(no1controller.text);
                      var no2 = int.parse(no2controller.text);
                      var sum = no1 + no2;
                      result = "The sum of $no1 & $no2 is $sum";
                      setState(() {});
                    },
                    child: Text("Add"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var no1 = int.parse(no1controller.text);
                      var no2 = int.parse(no2controller.text);
                      var sum = no1 - no2;
                      result = "The diff of $no1 & $no2 is $sum";
                      setState(() {});
                    },
                    child: Text("Subtract"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var no1 = int.parse(no1controller.text);
                      var no2 = int.parse(no2controller.text);
                      var sum = no1 * no2;
                      result = "The product of $no1 & $no2 is $sum";
                      setState(() {});
                    },
                    child: Text("Multiply"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var no1 = int.parse(no1controller.text);
                      var no2 = int.parse(no2controller.text);
                      var sum = no1 % no2;
                      result = "The division of $no1 & $no2 is $sum";
                      setState(() {});
                    },
                    child: Text("Divide"),
                  ),
                ],
              ),
              Text(
                result,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

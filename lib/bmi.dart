import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Bmiapp(),
    );
  }
}

class Bmiapp extends StatefulWidget {
  const Bmiapp({super.key});
  @override
  State<Bmiapp> createState() => _BmiappState();
}

class _BmiappState extends State<Bmiapp> {
  var wtcontroller = TextEditingController();
  var ftcontroller = TextEditingController();
  var incontroller = TextEditingController();
  var result = '';
  var bgcolor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "BMI APP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.blue,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          color: bgcolor,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "BMI Calculator",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.orange,
                ),
              ),

              Container(
                width: 250,
                child: TextField(
                  controller: wtcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Your Weight(Kg)",
                    prefixIcon: Icon(Icons.line_weight, color: Colors.orange),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                width: 250,
                margin: EdgeInsets.only(top: 5),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: ftcontroller,
                  decoration: InputDecoration(
                    hintText: "Enter Your Height(Feet)",
                    prefixIcon: Icon(Icons.height, color: Colors.orange),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                width: 250,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: incontroller,
                  decoration: InputDecoration(
                    hintText: "Enter Your Height(Inch)",
                    prefixIcon: Icon(Icons.height, color: Colors.orange),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  var wt = wtcontroller.text;
                  var ft = ftcontroller.text;
                  var inch = incontroller.text;
                  if (wt.isNotEmpty && ft.isNotEmpty && inch.isNotEmpty) {
                    var iwt = int.parse(wt);
                    var ift = int.parse(ft);
                    var iinch = int.parse(inch);

                    var tInch = (ift * 12) + iinch;
                    var tCm = tInch * 2.54;
                    var tM = tCm / 100;
                    var bMi = iwt / (tM * tM);
                    var msg = '';
                    if (bMi > 25) {
                      msg = "You Are Over Weight!!!";
                      bgcolor = Colors.cyan;
                    } else if (bMi < 18) {
                      msg = "You Are Under Weight!!!";
                      bgcolor = Colors.red;
                    } else {
                      msg = "You Are Healthy!!!";
                      bgcolor = Colors.green;
                    }
                    setState(() {
                      result = "$msg \nYour BMI is : ${bMi.toStringAsFixed(2)}";
                    });
                  } else {
                    setState(() {
                      result = "Please Fill All The Required Details!!!";
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  "Calculate",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'monospace',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                result,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

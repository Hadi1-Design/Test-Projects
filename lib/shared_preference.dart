import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shared Preferences",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const SharedPreference(),
    );
  }
}

class SharedPreference extends StatefulWidget {
  const SharedPreference({super.key});

  @override
  State<SharedPreference> createState() => SharedPreferenceState();
}

class SharedPreferenceState extends State<SharedPreference> {
  void initState() {
    super.initState();
    getdata();
  }

  var textcontroller = TextEditingController();
  var namevalue = "No Shared Preference";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shared Preferences")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: textcontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your text",
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              var name = textcontroller.text;
              var prefs = await SharedPreferences.getInstance();
              prefs.setString("name", name);
            },
            child: Text("Save"),
          ),
          Text(namevalue),
        ],
      ),
    );
  }

  void getdata() async {
    var prefs = await SharedPreferences.getInstance();
    var getname = prefs.getString("name");
    namevalue = getname ?? "No Shared Value";
    textcontroller.text = namevalue;

    setState(() {});
  }
}

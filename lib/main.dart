import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: "My App",
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
        // accentColor: Colors.red, it is depricated now
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "This is Priyanshu";
  void _changeText() {
    setState(() {
      if (data.startsWith("T")) {
        data = "Page developed by Priyanshu Sharma";
      } else {
        data = "This is Priyanshu";
      }
    });
  }

  Widget _bodywidget() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              data,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),

            // elevated button code
            // ElevatedButton(
            //     onPressed: _changeText,
            //     style: ElevatedButton.styleFrom(
            //       primary: Color.fromARGB(137, 38, 3, 3),
            //     ),
            //     child: const Text(
            //       "Click",
            //       style: TextStyle(
            //         color: Color.fromARGB(255, 208, 248, 29),
            //       ),
            //     ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: _bodywidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _changeText,
      ),
    );
  }
}

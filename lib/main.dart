import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Welcome App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter({int? setValue}) {
    if (setValue != null) {
      _counter = setValue;
    } else {
      _counter++;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WELCOME APP'),
      ),
      body: Container(
        height: 100,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 219, 219, 217),
          border: Border.all(color: Colors.yellow, width: 4),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            '$_counter',
            style: const TextStyle(
              fontSize: 50,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          print("Gesture detector");
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(40),
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

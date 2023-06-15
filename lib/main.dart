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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("first flutter project"),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  width: 50,
                  color: Colors.orangeAccent,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 100,
                  width: 50,
                  color: Colors.greenAccent,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  width: 50,
                  color: Colors.purple,
                ),
              ),
              Expanded(
              flex: 2,
                child: Container(
                  height: 100,
                  width: 50,
                  color: Colors.teal,
                ),
              ),
            ],
          ),
        )
    );
  }
}

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
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Mini checkpoint 2-9'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 250,
          height: 400,
          padding: EdgeInsets.all(10.0),
          color: Colors.blue,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text('hello world', style: TextStyle(color: Colors.white, fontSize: 18)),
                      Text('hello world'),
                      Text('hello world'),
                      Text('hello world'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/omori2.jfif',
                        width: 150,
                        height: 150,
                      ),
                      Image.asset(
                        'assets/omori.jfjf',
                        width: 150,
                        height: 150,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('This guy name omori'),
                      TextButton(
                        onPressed: () {},
                        child: Text("Click me"),
                      
                    ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Click me TOO")),
                      ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
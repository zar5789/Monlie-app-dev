import 'dart:ffi';

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
          width: 350,
          height: 500,
          padding: EdgeInsets.all(10.0),
          color: Colors.blue,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text('hello world',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      /***Radio<String>(
                        value: 'Male',
                        groupValue: _gender,
                        onChanged: (String gender) {
                          setState(() {
                            _gender = gender;
                          });
                        },
                      ),***/
                      //Checkbox(checkColor: Color.white, onChanged: onChanged)
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Text('This guy name omori'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Click me'),
                        ),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text('hit me'))),
                      //TextButton(
                      //onPressed: () {},
                      //child: Text("Click me"),

                      //),
                    ],
                  ),
                ),
              ),
              /***Expanded(
                child: Row(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'What do people call you',
                        labelText: 'Name*',
                      ),
                      onSaved: (String? value) {

                      },
                      validator: (String? value) {
                        return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                      }
                    )
                  ],
                ))***/
            ],
          ),
        ),
      ),
    );
  }
}

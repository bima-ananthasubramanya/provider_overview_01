import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coounter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Counter'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue.shade100,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              child: const Text('My Home Page',
                  style: TextStyle(color: Colors.black)),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.all(30),
              color: Colors.pink.shade100,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '$_counter',
                      style: const TextStyle(fontSize: 30),
                    ),
                    ElevatedButton(
                      onPressed: _incrementCounter,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      child: const Text(
                        'Increment',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ]),
            ),
            Container(
              color: Colors.grey,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 100, right: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    color: Colors.yellow.shade100,
                    child: Text('$_counter'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange.shade100),
                    onPressed: _incrementCounter,
                    child: const Text(
                      'Sibling',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

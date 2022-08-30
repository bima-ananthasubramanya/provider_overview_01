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
            CounterA(counter: _counter, incrementCounter: _incrementCounter),
            Middle(counter: _counter, incrementCounter: _incrementCounter),
          ],
        ),
      ),
    );
  }
}

class Middle extends StatelessWidget {
  final int counter;
  final Function() incrementCounter;
  const Middle({
    Key? key,
    required this.counter,
    required this.incrementCounter,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 100, right: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CounterB(counter: counter),
          Sibling(incrementCounter: incrementCounter),
        ],
      ),
    );
  }
}

class Sibling extends StatelessWidget {
  final Function() incrementCounter;
  const Sibling({
    Key? key,
    required this.incrementCounter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.orange.shade100),
      onPressed: incrementCounter,
      child: const Text(
        'Sibling',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

class CounterB extends StatelessWidget {
  final int counter;
  const CounterB({
    Key? key,
    required this.counter,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      color: Colors.yellow.shade100,
      child: Text('$counter'),
    );
  }
}

class CounterA extends StatelessWidget {
  final int counter;
  Function() incrementCounter;
  CounterA({
    Key? key,
    required this.counter,
    required this.incrementCounter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.all(30),
      color: Colors.pink.shade100,
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '$counter',
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: incrementCounter,
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: const Text(
                'Increment',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'singleton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final Singleton singleton = Singleton.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Singleton Pattern Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Current Number: ${singleton.number}'),
            Text('Click Button Below to Increment'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  singleton.incrementNumber();
                });
              },
              child: Text('Increment Number'),
            ),
          ],
        ),
      ),
    );
  }
}

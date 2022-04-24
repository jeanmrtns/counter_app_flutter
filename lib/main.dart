import 'package:flutter/material.dart';

void main(List<String> args) {
  var app = MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      color: Colors.limeAccent,
      home: HomePage());
  runApp(app);
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    var addButton = FloatingActionButton(
      onPressed: () {
        increment();
      },
      child: const Icon(Icons.add),
    );
    var scaffold = Scaffold(
      appBar: AppBar(
        title: const Text('This is a counter'),
      ),
      body: counterText(),
      floatingActionButton: addButton,
    );
    return scaffold;
  }

  Widget counterText() {
    return Center(
        child: Text(
      "Hello my counter\n$counter",
      textAlign: TextAlign.center,
    ));
  }

  void increment() {
    counter++;
    setState(() {});
  }
}

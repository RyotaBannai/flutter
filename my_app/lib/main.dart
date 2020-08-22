// _stack_absolute_postion
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          WidA(),
          Positioned(
            top: 10.0,
            left: 10.0,
            width: 100.0,
            height: 100.0,
            child: WidB(),
          ),
          Positioned(
            top: 10.0,
            right: 10.0,
            width: 100.0,
            height: 100.0,
            child: WidC(),
          ),
          Positioned(
            bottom: 10.0,
            left: 10.0,
            width: 100.0,
            height: 100.0,
            child: WidD(),
          ),
          Positioned(
            bottom: 10.0,
            right: 10.0,
            width: 100.0,
            height: 100.0,
            child: WidE(),
          )
        ],
      ),
    );
  }
}

class WidA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.0, 0.0),
      color: Colors.white70,
      child: Text('Widget A'),
    );
  }
}

class WidB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.0, 0.0),
      color: Colors.lightGreen,
      child: Text('Widget B'),
    );
  }
}

class WidC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.0, 0.0),
      color: Colors.amber,
      child: Text('Widget C'),
    );
  }
}

class WidD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.0, 0.0),
      color: Colors.blueGrey,
      child: Text('Widget D'),
    );
  }
}

class WidE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.0, 0.0),
      color: Colors.teal,
      child: Text('Widget D'),
    );
  }
}

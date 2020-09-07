import 'package:flutter/material.dart';
import './Screen/CategoryScreen.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('meals'),
      ),
      body: CategoryScreen(),
    );
  }
}

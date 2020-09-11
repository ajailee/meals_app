import 'package:flutter/material.dart';

import '../widget/MainDrawer.dart';

class FavoritesScreen extends StatefulWidget {
  static String routeName = '/FavoritesScreen';

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MainDrawer(),
        backgroundColor: Colors.white,
);
  }
}

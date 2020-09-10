import 'package:flutter/material.dart';
import 'package:meals_app/Screen/FavoritesScreen.dart';
import 'package:meals_app/Screen/category_meals_screen.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoryMealsScreen(), 'title': 'Categories'},
    {'page': FavoritesScreen(), 'title': 'Favorites'},
  ];
  int SelectedPageIndex = 0;

  void selectpage(index) {
    setState(() {
      SelectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[SelectedPageIndex]['title'],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: selectpage,
          currentIndex: SelectedPageIndex,
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.shifting, /////fixed type is default
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.category),
                title: Text('Categories'),
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.star),
                title: Text('Favorites'),
                backgroundColor: Theme.of(context).primaryColor)
          ]),
    );
  }
}

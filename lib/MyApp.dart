import 'package:flutter/material.dart';
import 'package:meals_app/Screen/BottomNavigationBar.dart';
import 'package:meals_app/Screen/FavoritesScreen.dart';
import 'package:meals_app/Screen/Settings.dart';

import 'Screen/category_meals_screen.dart';
import 'Screen/meal_detail_screen.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String,bool> _filters={
    'gluten':false,
    'lactose':false,
    'vegan':false,
    'vegetarian':false,
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amberAccent,
          canvasColor: Colors.black38,
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                headline6: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoCondensed',
                ),
              )),
        routes: {
        '/' : (ctx) => BottomNavigation(),
          CategoryMealsScreen.routeName : (ctx) => CategoryMealsScreen(),
          MealDetailScreen.routeName : (ctx)=>MealDetailScreen(),
          FavoritesScreen.routeName: (ctx)=>FavoritesScreen(),
          Settings.routeName: (ctx)=>Settings(),
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (context) => CategoryMealsScreen(),);
        },
    );
  }
}

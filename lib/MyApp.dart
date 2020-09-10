import 'package:flutter/material.dart';
import 'package:meals_app/Screen/toptapbar.dart';
import 'Screen/CategoryScreen.dart';
import 'Screen/category_meals_screen.dart';
import 'Screen/meal_detail_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amberAccent,
          canvasColor: Colors.black45,
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
        '/' : (ctx) => TopTapBar(),
          CategoryMealsScreen.routeName : (ctx) => CategoryMealsScreen(),
          MealDetailScreen.routeName : (ctx)=>MealDetailScreen(),
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (context) => CategoryMealsScreen(),);
        },
    );
  }
}

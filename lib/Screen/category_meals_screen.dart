import 'package:flutter/material.dart';
import 'package:meals_app/models/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static  String routeName = 'CategoryMealsScreen';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final String Categorytitle = args['title'];
    final String Categoryid = args['id'];
    final Categorymeals = DUMMY_MEALS.where((meal) => meal.categories.contains(Categoryid)).toList();
    return Scaffold(
      appBar: AppBar(title: Text(Categorytitle),),
      body: ListView.builder(itemBuilder: (context, index) {
        return Text(Categorymeals[index].title);
      },itemCount:Categorymeals.length,)
    );
  }
}

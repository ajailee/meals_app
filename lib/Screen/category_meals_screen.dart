import 'package:flutter/material.dart';
import 'package:meals_app/models/dummy_data.dart';
import 'package:meals_app/widget/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static String routeName = 'CategoryMealsScreen';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String Categorytitle = args['title'];
    final String Categoryid = args['id'];
    final Categorymeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(Categoryid))
        .toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(Categorytitle),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              id: Categorymeals[index].id,
              title: Categorymeals[index].title,
              imageUrl: Categorymeals[index].imageUrl,
              duration: Categorymeals[index].duration,
              complexity: Categorymeals[index].complexity,
              affordability: Categorymeals[index].affordability,
            );
          },
          itemCount: Categorymeals.length,
        ));
  }
}

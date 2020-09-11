import 'package:flutter/material.dart';
import 'package:meals_app/models/dummy_data.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widget/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static String routeName = 'CategoryMealsScreen';
  final List<Meal> availableMeals;


  CategoryMealsScreen(this.availableMeals);

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String Categorytitle = args['title'];
    final String Categoryid = args['id'];
    final Categorymeals = widget.availableMeals
        .where((meal) => meal.categories.contains(Categoryid))
        .toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(Categorytitle),
        ),
        body:  Container(
          child: ListView.builder(
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
          ),
        ));
  }
}

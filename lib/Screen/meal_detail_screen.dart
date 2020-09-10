import 'package:flutter/material.dart';
import 'package:meals_app/models/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static final String routeName = '/meal_detail_screen';
  final ScrollController sc = ScrollController();

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments;
    final id = args;
    final selectedMeal = DUMMY_MEALS.firstWhere((element) => element.id == id);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(selectedMeal.imageUrl),
              _titleBuilder('Ingredients'),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                width: double.infinity,
                height: 150,
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Scrollbar(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Text(
                      selectedMeal.ingredients[index],
                      style: TextStyle(fontSize: 18),
                    ),
                    itemCount: selectedMeal.ingredients.length,
                  ),
                ),
              ),
              _titleBuilder('Steps'),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                width: double.infinity,
                height: 300,
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Scrollbar(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                          leading: CircleAvatar(
                            child: Text('${index + 1}'),
                          ),
                          title: Text('${selectedMeal.steps[index]}'),
                        );
                      },
                    itemCount: selectedMeal.steps.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _titleBuilder(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 26,
          color: Colors.amber,
        ),
      ),
    );
  }
}

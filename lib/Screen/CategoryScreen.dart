import 'package:flutter/material.dart';
import 'package:meals_app/models/dummy_data.dart';
import 'package:meals_app/widget/Category_item.dart';
class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('meals'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(15),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,mainAxisSpacing: 20,crossAxisSpacing: 20,childAspectRatio: 3/2),
          children: DUMMY_CATEGORIES.map((item) {
            return CategoryItem(title: item.title ,color: item.color,);
          }).toList()
      ),
    );
  }
}

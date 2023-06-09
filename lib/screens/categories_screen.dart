import 'package:flutter/material.dart';
import 'package:meals_app/widgets/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      children: DUMMY_CATEGORIES
          .map((data) => CategoryItem(
                title: data.title,
                color: data.color,
                id: data.id,
              ))
          .toList(),
    );
  }
}

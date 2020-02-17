import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/data/dummy_data.dart';

import 'items/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DeliMeals"),
      ),
      body: const CategoryGridView(),
    );
  }
}

class CategoryGridView extends StatelessWidget {
  const CategoryGridView();

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15),
      children: <Widget>[
        ...DUMMY_CATEGORIES
            .map((it) => CategoryItem(
                  it.id,
                  it.title,
                  it.color,
                ))
            .toList()
      ],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}

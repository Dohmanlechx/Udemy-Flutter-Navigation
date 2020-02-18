import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem({@required this.meal});

  void _selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(15),
                    topRight: const Radius.circular(15),
                  ),
                  child: Image.network(
                    meal.imageUrl,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

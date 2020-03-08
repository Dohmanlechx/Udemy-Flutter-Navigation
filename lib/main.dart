import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/category_meals_screen.dart';
import 'package:flutter_complete_guide/screens/filters_screen.dart';
import 'package:flutter_complete_guide/screens/meal_details_screen.dart';
import 'package:flutter_complete_guide/screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "RobotoCondensed",
            )),
      ),
      initialRoute: MyApp.routeName,
      routes: {
        routeName: (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailsScreen.routeName: (ctx) => MealDetailsScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
//      onGenerateRoute: (RouteSettings settings) {
//        switch (settings.name) {
//          case MyApp.routeName:
//            return ((context) => TabsScreen();
//          case CategoryMealsScreen.routeName:
//            return MaterialPageRoute(builder: (_) => CategoryMealsScreen(), settings: settings);
//          case MealDetailsScreen.routeName:
//            return CupertinoPageRoute(builder: (_) => MealDetailsScreen(), settings: settings);
//        }
//
//        return MaterialPageRoute(builder: (_) => CategoriesScreen());
//      },
    );
  }
}

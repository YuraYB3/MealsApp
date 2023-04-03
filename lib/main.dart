import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import 'package:meals_app/screens/settings_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';

import 'screens/category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabsScreen(),
      routes: {
        '/tabs': (context) => TabsScreen(),
        '/categories': (context) => CategoryMealsScreen(),
        '/detail': (context) => MealDetailScreen(),
        '/settings': (context) => SettingsScreen()
      },
      theme: ThemeData(
          primarySwatch: Colors.pink,
          primaryColor: Colors.amber,
          canvasColor: const Color.fromRGBO(
            255,
            254,
            229,
            1,
          ),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1:
                  const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)))),
    );
  }
}

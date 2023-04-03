import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/favourites_screen.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: MainDrawer(),
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text('Meals'),
            bottom: const TabBar(
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    icon: Icon(Icons.category, color: Colors.white),
                    text: 'Categories',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    text: 'Favourite',
                  )
                ]),
          ),
          body: TabBarView(children: [CategoriesScreen(), FavouritesScreen()]),
        ));
  }
}

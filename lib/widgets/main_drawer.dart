import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key});

  Widget buildListTile(String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 180,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Colors.red,
            child: Text(
              "COOKEE",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(height: 20),
          buildListTile('Meals', Icons.restaurant_menu, () {
            Navigator.of(context).pushReplacementNamed('/tabs');
          }),
          SizedBox(height: 20),
          buildListTile('Settings', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed('/settings');
          }),
        ],
      ),
    );
  }
}

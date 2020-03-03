import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget _buildListTile(String title, IconData icon, Function onTap) {
    return ListTile(
      leading: Icon(icon, size: 26),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: "RobotoCondensed",
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () => onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            height: 120,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Cooking Up!",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _buildListTile("Meals", Icons.restaurant, null),
          _buildListTile("Filters", Icons.settings, null),
        ],
      ),
    );
  }
}
